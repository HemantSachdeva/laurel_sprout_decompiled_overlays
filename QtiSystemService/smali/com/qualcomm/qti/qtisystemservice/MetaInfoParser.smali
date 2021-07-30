.class public Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser;
.super Ljava/lang/Object;
.source "MetaInfoParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser$SingletonHolder;
    }
.end annotation


# instance fields
.field private mMetaInfo:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "/data/vendor/modem_config/ver_info.txt"

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    :try_start_0
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Metabuild_Info"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Meta_Build_ID"

    .line 45
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 47
    :catch_0
    :try_start_2
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    const-string v0, ""

    .line 54
    :goto_0
    iput-object v0, p0, Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser;->mMetaInfo:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser$1;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser;
    .locals 1

    .line 58
    sget-object v0, Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser$SingletonHolder;->sInstance:Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser;

    return-object v0
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance p0, Ljava/io/InputStreamReader;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string p1, "UTF-8"

    invoke-direct {p0, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 67
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    .line 69
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x100

    invoke-direct {p0, v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 79
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 82
    throw p1
.end method


# virtual methods
.method public getMetaInfo()Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser;->mMetaInfo:Ljava/lang/String;

    return-object p0
.end method
