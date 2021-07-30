.class Lcom/android/dynsystem/KeyRevocationList;
.super Ljava/lang/Object;
.source "KeyRevocationList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dynsystem/KeyRevocationList$RevocationStatus;
    }
.end annotation


# static fields
.field private static final JSON_ENTRIES:Ljava/lang/String; = "entries"

.field private static final JSON_PUBLIC_KEY:Ljava/lang/String; = "public_key"

.field private static final JSON_REASON:Ljava/lang/String; = "reason"

.field private static final JSON_STATUS:Ljava/lang/String; = "status"

.field private static final STATUS_REVOKED:Ljava/lang/String; = "REVOKED"

.field private static final TAG:Ljava/lang/String; = "KeyRevocationList"


# instance fields
.field mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/dynsystem/KeyRevocationList$RevocationStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dynsystem/KeyRevocationList;->mEntries:Ljava/util/HashMap;

    .line 60
    return-void
.end method

.method static fromJsonString(Ljava/lang/String;)Lcom/android/dynsystem/KeyRevocationList;
    .locals 11
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/android/dynsystem/KeyRevocationList;

    invoke-direct {v1}, Lcom/android/dynsystem/KeyRevocationList;-><init>()V

    .line 103
    .local v1, "list":Lcom/android/dynsystem/KeyRevocationList;
    const-string v2, "KeyRevocationList"

    const-string v3, "Begin of revocation list"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v3, "entries"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 106
    .local v3, "entries":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 107
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 108
    .local v5, "entry":Lorg/json/JSONObject;
    const-string v6, "public_key"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "publicKey":Ljava/lang/String;
    const-string v7, "status"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, "status":Ljava/lang/String;
    const-string v8, "reason"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_0
    const-string v8, ""

    .line 111
    .local v8, "reason":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v6, v7, v8}, Lcom/android/dynsystem/KeyRevocationList;->addEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Revocation entry: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v5    # "entry":Lorg/json/JSONObject;
    .end local v6    # "publicKey":Ljava/lang/String;
    .end local v7    # "status":Ljava/lang/String;
    .end local v8    # "reason":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 115
    .end local v3    # "entries":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_1
    const-string v3, "End of revocation list"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-object v1
.end method

.method static fromUrl(Ljava/net/URL;)Lcom/android/dynsystem/KeyRevocationList;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetch from URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyRevocationList"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 132
    .local v0, "connection":Ljava/net/URLConnection;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 133
    const-string v1, "Cache-Control"

    const-string v2, "max-age=0"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 135
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Lcom/android/dynsystem/KeyRevocationList;->readFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/dynsystem/KeyRevocationList;->fromJsonString(Ljava/lang/String;)Lcom/android/dynsystem/KeyRevocationList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 135
    :cond_0
    return-object v2

    .line 134
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method private static readFully(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 142
    .local v1, "buffer":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v2, "builder":Ljava/lang/StringBuilder;
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v5, v4

    .local v5, "n":I
    const/4 v6, -0x1

    if-le v4, v6, :cond_0

    .line 144
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v3, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "publicKey"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/android/dynsystem/KeyRevocationList;->mEntries:Ljava/util/HashMap;

    new-instance v1, Lcom/android/dynsystem/KeyRevocationList$RevocationStatus;

    invoke-direct {v1, p2, p3}, Lcom/android/dynsystem/KeyRevocationList$RevocationStatus;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method getRevocationStatusForKey(Ljava/lang/String;)Lcom/android/dynsystem/KeyRevocationList$RevocationStatus;
    .locals 1
    .param p1, "publicKey"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/android/dynsystem/KeyRevocationList;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dynsystem/KeyRevocationList$RevocationStatus;

    return-object v0
.end method

.method isRevoked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "publicKey"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/dynsystem/KeyRevocationList;->getRevocationStatusForKey(Ljava/lang/String;)Lcom/android/dynsystem/KeyRevocationList$RevocationStatus;

    move-result-object v0

    .line 74
    .local v0, "entry":Lcom/android/dynsystem/KeyRevocationList$RevocationStatus;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/dynsystem/KeyRevocationList$RevocationStatus;->mStatus:Ljava/lang/String;

    const-string v2, "REVOKED"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
