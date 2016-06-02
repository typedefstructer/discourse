FROM typedefstructer/scforums:base
USER sc
WORKDIR /src/discourse
COPY entrypoint.sh /opt

ENTRYPOINT ["\/bin\/bash", "\/opt\/entrypoint.sh"]
CMD "/opt/entrypoint.sh"