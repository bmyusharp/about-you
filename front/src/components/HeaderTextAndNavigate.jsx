import { IconButton } from "@mui/material";
import ArrowBackIosIcon from "@mui/icons-material/ArrowBackIos";
import React from "react";
import styled from "styled-components";
import { useNavigate } from "react-router-dom";

const Header = styled.div`
  position: absolute;
  width: 100%;
  height: 48px;
  left: 0px;
  top: 0px;
  border-bottom: 0.5px solid rgba(0, 0, 0, 0.25);

  line-height: 48px;
  text-align: center;
  font-size: 16px;
`;

function HeaderOnlyText(props) {
  const navigate = useNavigate();

  function handleButton(path) {
    navigate(path);
  }

  return (
    <div>
      <IconButton
        onClick={() => {
          handleButton(props.path);
        }}
      >
        <ArrowBackIosIcon></ArrowBackIosIcon>
      </IconButton>
      <Header>{props.text}</Header>
    </div>
  );
}

export default HeaderTextAndNavigate;
