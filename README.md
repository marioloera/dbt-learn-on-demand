Welcome to your new dbt project!



# Using the starter project

Try running the following commands:

## run

    dbt run
    dbt run --no-version-check
    dbt run --full-refresh

### run specific model

    dbt run -m stg_payments
    
### run specific model and downstream dependencies

    dbt run -m stg_payments+

## test

    dbt test
    dbt test --schema
    dbt test -m stg_customers
    dbt test --data

## sources freshneess

    dbt source snapshot-freshness

## build dependencies (packages)

    dbt deps

## seed, build data from csv

    dbt seed

## compile sql code

    dbt compiled

## documents:

    dbt docs generate

### documents local server:
    dbt docs serve
    http://localhost:8080

# Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
