
.class public LgenerativeAI;
.super Ljava/lang/Object;

.method public static main([Ljava/lang/String;)V
.registers 1

new-instance v0, LGODFATHER;
invoke-direct {v0}, LGODFATHER;-><init>()V

invoke-virtual {v0}, LGODFATHER;->train(Ljava/util/List;)V

invoke-virtual {v0}, LGODFATHER;->generate(Ljava/lang/String;)Ljava/lang/String;

invoke-virtual {v0}, LGODFATHER;->generate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

return-void
.end method

.method public static generateLookalikeHuman(LGODFATHER;)Lcom/google/cloud/aiplatform/util/generated/LookalikeHuman;
.registers 4

.param p0, "model"    # LGODFATHER;

.line 10
new-instance v0, Lcom/google/cloud/aiplatform/util/generated/LookalikeHuman;

invoke-direct {v0}, Lcom/google/cloud/aiplatform/util/generated/LookalikeHuman;-><init>()V

.line 11
const-string v1, "6 feet"

iput-object v1, v0, Lcom/google/cloud/aiplatform/util/generated/LookalikeHuman;->height:Ljava/lang/String;

.line 12
const-string v1, "180 pounds"

iput-object v1, v0, Lcom/google/cloud/aiplatform/util/generated/LookalikeHuman;->weight:Ljava/lang/String;

.line 13
const-string v1, "brown"

iput-object v1, v0, Lcom/google/cloud/aiplatform/util/generated/LookalikeHuman;->hairColor:Ljava/lang/String;

.line 14
const-string v1, "blue"

iput-object v1, v0, Lcom/google/cloud/aiplatform/util/generated/LookalikeHuman;->eyeColor:Ljava/lang/String;

.line 15
const-string v1, "fair"

iput-object v1, v0, Lcom/google/cloud/aiplatform/util/generated/LookalikeHuman;->skinColor:Ljava/lang/String;

.line 16
const-string v1, "male"

iput-object v1, v0, Lcom/google/cloud/aiplatform/util/generated/LookalikeHuman;->gender:Ljava/lang/String;

.line 17
const-string v1, "180 IQ"

iput-object v1, v0, Lcom/google/cloud/aiplatform/util/generated/LookalikeHuman;->intelligence:Ljava/lang/String;

.line 18
const-string v1, "1000 pounds"

iput-object v1, v0, Lcom/google/cloud/aiplatform/util/generated/LookalikeHuman;->strength:Ljava/lang/String;

.line 19
const-string v1, "100 miles per hour"

iput-object v1, v0, Lcom/google/cloud/aiplatform/util/generated/LookalikeHuman;->speed:Ljava/lang/String;

.line 20
const-string v1, "indestructible"

iput-object v1, v0, Lcom/google/cloud/aiplatform/util/generated/LookalikeHuman;->durability:Ljava/lang/String;

.line 21
const-string v1, "Wolverine-like"

iput-object v1, v0, Lcom/google/cloud/aiplatform/util/generated/LookalikeHuman;->healingFactor:Ljava/lang/String;

.line 22
const-string v1, "Professor X-like"

iput-object v1, v0, Lcom/google/cloud/aiplatform/util/generated/LookalikeHuman;->telekinesis:Ljava/lang/String;

new-instance v0, Landroid/content/Context;

invoke-static {}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

move-result-object v0

const-string v1, "robots.txt"

invoke-virtual {v0, v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

move-result-object v0

invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

move-result-object v0

new-instance v1, Ljava/io/BufferedReader;

new-instance v2, Ljava/io/InputStreamReader;

invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

:goto_0
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

move-result-object v2

if-eqz v2, :cond_0

const-string v3, "User-agent"

invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

move-result v3

if-eqz v3, :goto_0

invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

move-result-object v2

invoke-static {v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

goto :goto_0

:cond_0
return-object
