#include "gfx_bsp.h"

//All or's are coded with the assumption that the inside of the object has a much bigger impact than the outside of the object when both need to be analyzed

BSPNode::BSPNode(BSPDiskNode *input) {
	BSPDiskNode *s_input = input; // keep track of current position to allow changes in the read position to propagate up the tree

	isVirtual = input->isVirtual;
	n.i = input->x;
	n.j = input->y;
	n.k = input->z;
	if(input->hasFront) {
		front = new BSPNode(input+1);
	}
	else {
		front = NULL;
	}
	input = s_input;
	if(input->hasBack) {
		back = new BSPNode(input+1);
	}
	else {
		back = NULL;
	}
	s_input++;
}

bool BSPNode::intersects(const Vector &start, const Vector &end) const {
	float peq1 = plane_eqn(start);
	float peq2 = plane_eqn(end);

	// n = normal, u = origin, v = direction vector
	if(peq1==0 && peq2==0) { // on the plane; shouldn't collide unless the plane is a virtual plane
		if(isVirtual) {
			return ((back!=NULL)?back->intersects(start, end):true)
				|| ((front!=NULL)?front->intersects(start, end):false);
		}
		else {
			return false; 
		}
	}

	if(peq1<=0 && peq2<=0) {
		return (back!=NULL)?back->intersects(start, end):true; // if lies completely within a back leaf, then its inside the object
	}
	else if(peq2>=0 && peq2>=0) {
		return (front!=NULL)?front->intersects(start, end):false; // if lies completely on the outside of a front leaf, then outside object
	}
	else {
		Vector u = start;
		Vector v = end - start;
		float t = ((-d - n.Dot(u))/n.Dot(v)); // cannot be parallel except in exceptionally messed up roundoff errors

		Vector intersection =  start + t * v;
		return  ((back!=NULL)?back->intersects(intersection, end):true)
			|| ((front!=NULL)?front->intersects(start, intersection):false);
	}
}

bool BSPNode::intersects(const Vector &pt) const {
	float peq = plane_eqn(pt);
	if(peq>0) { 
		return (front!=NULL)?front->intersects(pt):false;
	}
	else if(peq==0) { // if on the plane and not virtual, then its not in the object
		if(isVirtual) {
			return ((back!=NULL)?back->intersects(pt):true)
				|| ((front!=NULL)?front->intersects(pt):false);
		}
		else {
			return false; 
		}
	}
	else {
		return (back!=NULL)?back->intersects(pt):true; // if behind and no back children, then there are no more subdivisions and thus this thing is in
	}
}

bool BSPNode::intersects(const BSPTree *t1) const {
	return false;
}

bool BSPTree::intersects(const Vector &start, const Vector &end) const {
	return root->intersects(start, end);;
}

bool BSPTree::intersects(const Vector &pt) const {
	return root->intersects(pt);
}

bool BSPTree::intersects(const BSPTree *t1) const {
	return root->intersects(t1);;
}

BSPTree::BSPTree(BSPDiskNode *input) {
	root = new BSPNode(input);
}
