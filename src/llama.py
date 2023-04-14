import transformers

device = "cpu"

tokenizer = transformers.LlamaTokenizer.from_pretrained("decapoda-research/llama-7b-hf")
model = transformers.LlamaForCausalLM.from_pretrained("decapoda-research/llama-7b-hf").to(device)

batch = tokenizer(
    "The capital of Canada is",
    return_tensors="pt", 
    add_special_tokens=False
)

batch = {k: v.to(device) for k, v in batch.items()}
generated = model.generate(batch["input_ids"], max_length=100)
print(tokenizer.decode(generated[0]))
