package service

import (
	"context"
	"{{ .ServicePath }}/pb/{{ package .ServiceName }}"
	"go.uber.org/zap"
)

func (s *service) {{ index .CustomOptions "methodTitle" }}(ctx context.Context, req *{{ package .ServiceName }}.{{ index .CustomOptions "methodTitle" }}Req) (*{{ package .ServiceName }}.{{ index .CustomOptions "methodTitle" }}Resp, error) {
	s.log.Infow("received string", zap.String("str", req.GetStr()))
	return &{{ package .ServiceName }}.{{ index .CustomOptions "methodTitle" }}Resp{Str: "{{ package .ServiceName }}.{{ index .CustomOptions "methodTitle" }}: received: " + req.GetStr()}, nil
}
