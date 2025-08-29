module "dev-infra" {

    source = "./terra-infra"
    key_pair_name = "amz"
    sg_name = "proj-sg"
    ec2_count = 1
    ec2_inst_type = "t3.medium"
    ec2_ami = "ami-0360c520857e3138f"
    ec2_vol_size = 25
    ec2_vol_type = "gp3"
    ec2_inst_name = "my-proj02"
    
  
}
