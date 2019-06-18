package Pojo;

import java.util.ArrayList;
import java.util.List;

public class PictureExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PictureExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andPicidIsNull() {
            addCriterion("picid is null");
            return (Criteria) this;
        }

        public Criteria andPicidIsNotNull() {
            addCriterion("picid is not null");
            return (Criteria) this;
        }

        public Criteria andPicidEqualTo(Integer value) {
            addCriterion("picid =", value, "picid");
            return (Criteria) this;
        }

        public Criteria andPicidNotEqualTo(Integer value) {
            addCriterion("picid <>", value, "picid");
            return (Criteria) this;
        }

        public Criteria andPicidGreaterThan(Integer value) {
            addCriterion("picid >", value, "picid");
            return (Criteria) this;
        }

        public Criteria andPicidGreaterThanOrEqualTo(Integer value) {
            addCriterion("picid >=", value, "picid");
            return (Criteria) this;
        }

        public Criteria andPicidLessThan(Integer value) {
            addCriterion("picid <", value, "picid");
            return (Criteria) this;
        }

        public Criteria andPicidLessThanOrEqualTo(Integer value) {
            addCriterion("picid <=", value, "picid");
            return (Criteria) this;
        }

        public Criteria andPicidIn(List<Integer> values) {
            addCriterion("picid in", values, "picid");
            return (Criteria) this;
        }

        public Criteria andPicidNotIn(List<Integer> values) {
            addCriterion("picid not in", values, "picid");
            return (Criteria) this;
        }

        public Criteria andPicidBetween(Integer value1, Integer value2) {
            addCriterion("picid between", value1, value2, "picid");
            return (Criteria) this;
        }

        public Criteria andPicidNotBetween(Integer value1, Integer value2) {
            addCriterion("picid not between", value1, value2, "picid");
            return (Criteria) this;
        }

        public Criteria andPicurlIsNull() {
            addCriterion("picurl is null");
            return (Criteria) this;
        }

        public Criteria andPicurlIsNotNull() {
            addCriterion("picurl is not null");
            return (Criteria) this;
        }

        public Criteria andPicurlEqualTo(String value) {
            addCriterion("picurl =", value, "picurl");
            return (Criteria) this;
        }

        public Criteria andPicurlNotEqualTo(String value) {
            addCriterion("picurl <>", value, "picurl");
            return (Criteria) this;
        }

        public Criteria andPicurlGreaterThan(String value) {
            addCriterion("picurl >", value, "picurl");
            return (Criteria) this;
        }

        public Criteria andPicurlGreaterThanOrEqualTo(String value) {
            addCriterion("picurl >=", value, "picurl");
            return (Criteria) this;
        }

        public Criteria andPicurlLessThan(String value) {
            addCriterion("picurl <", value, "picurl");
            return (Criteria) this;
        }

        public Criteria andPicurlLessThanOrEqualTo(String value) {
            addCriterion("picurl <=", value, "picurl");
            return (Criteria) this;
        }

        public Criteria andPicurlLike(String value) {
            addCriterion("picurl like", value, "picurl");
            return (Criteria) this;
        }

        public Criteria andPicurlNotLike(String value) {
            addCriterion("picurl not like", value, "picurl");
            return (Criteria) this;
        }

        public Criteria andPicurlIn(List<String> values) {
            addCriterion("picurl in", values, "picurl");
            return (Criteria) this;
        }

        public Criteria andPicurlNotIn(List<String> values) {
            addCriterion("picurl not in", values, "picurl");
            return (Criteria) this;
        }

        public Criteria andPicurlBetween(String value1, String value2) {
            addCriterion("picurl between", value1, value2, "picurl");
            return (Criteria) this;
        }

        public Criteria andPicurlNotBetween(String value1, String value2) {
            addCriterion("picurl not between", value1, value2, "picurl");
            return (Criteria) this;
        }

        public Criteria andHouseidIsNull() {
            addCriterion("houseid is null");
            return (Criteria) this;
        }

        public Criteria andHouseidIsNotNull() {
            addCriterion("houseid is not null");
            return (Criteria) this;
        }

        public Criteria andHouseidEqualTo(String value) {
            addCriterion("houseid =", value, "houseid");
            return (Criteria) this;
        }

        public Criteria andHouseidNotEqualTo(String value) {
            addCriterion("houseid <>", value, "houseid");
            return (Criteria) this;
        }

        public Criteria andHouseidGreaterThan(String value) {
            addCriterion("houseid >", value, "houseid");
            return (Criteria) this;
        }

        public Criteria andHouseidGreaterThanOrEqualTo(String value) {
            addCriterion("houseid >=", value, "houseid");
            return (Criteria) this;
        }

        public Criteria andHouseidLessThan(String value) {
            addCriterion("houseid <", value, "houseid");
            return (Criteria) this;
        }

        public Criteria andHouseidLessThanOrEqualTo(String value) {
            addCriterion("houseid <=", value, "houseid");
            return (Criteria) this;
        }

        public Criteria andHouseidLike(String value) {
            addCriterion("houseid like", value, "houseid");
            return (Criteria) this;
        }

        public Criteria andHouseidNotLike(String value) {
            addCriterion("houseid not like", value, "houseid");
            return (Criteria) this;
        }

        public Criteria andHouseidIn(List<String> values) {
            addCriterion("houseid in", values, "houseid");
            return (Criteria) this;
        }

        public Criteria andHouseidNotIn(List<String> values) {
            addCriterion("houseid not in", values, "houseid");
            return (Criteria) this;
        }

        public Criteria andHouseidBetween(String value1, String value2) {
            addCriterion("houseid between", value1, value2, "houseid");
            return (Criteria) this;
        }

        public Criteria andHouseidNotBetween(String value1, String value2) {
            addCriterion("houseid not between", value1, value2, "houseid");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}