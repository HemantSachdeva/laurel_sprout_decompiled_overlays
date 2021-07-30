.class final synthetic Ldfx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ldfz;


# direct methods
.method public constructor <init>(Ldfz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfx;->a:Ldfz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v1, p0

    iget-object v2, v1, Ldfx;->a:Ldfz;

    sget-object v3, Ldfz;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v2, Ldfz;->a:Ldbb;

    invoke-virtual {v0}, Ldbb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldfu;->a(Landroid/content/Context;)Ldfu;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget-object v0, v2, Ldfz;->c:Ldgl;

    invoke-virtual {v0}, Ldgl;->a()Ldgn;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ldfu;->a()V

    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    invoke-virtual {v5}, Ldgn;->b()Z

    move-result v0

    const/16 v7, 0xc8

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x1

    if-nez v0, :cond_11

    invoke-virtual {v5}, Ldgn;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_c

    :cond_1
    invoke-static {v5}, Ldgj;->a(Ldgn;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v12, v2, Ldfz;->b:Ldgo;

    invoke-virtual {v2}, Ldfz;->c()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v5, Ldgn;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ldfz;->a()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v5, Ldgn;->c:Ljava/lang/String;

    const-string v3, "projects/%s/installations/%s/authTokens:generate"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v14, v4, v9

    aput-object v0, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldgo;->b(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    :goto_0
    if-gt v9, v11, :cond_f

    invoke-virtual {v12, v3, v13}, Ldgo;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4
    :try_end_3
    .catch Ldgb; {:try_start_3 .. :try_end_3} :catch_c

    :try_start_4
    const-string v0, "POST"

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Authorization"

    const-string v8, "FIS_v2 "

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v4, v0, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "sdkVersion"

    const-string v8, "a:16.3.3_1p"

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "installation"

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v6}, Ldgo;->a(Lorg/json/JSONObject;)[B

    move-result-object v0

    invoke-static {v4, v0}, Ldgo;->a(Ljava/net/URLConnection;[B)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-ne v0, v7, :cond_6

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v6, Landroid/util/JsonReader;

    new-instance v8, Ljava/io/InputStreamReader;

    sget-object v7, Ldgo;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v8}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {}, Ldgs;->a()Ldgr;

    move-result-object v7

    invoke-virtual {v6}, Landroid/util/JsonReader;->beginObject()V

    :goto_2
    invoke-virtual {v6}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "token"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v6}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Ldgr;->a:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v10, "expiresIn"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v18, v12

    :try_start_7
    invoke-static {v8}, Ldgo;->a(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Ldgr;->a(J)V

    goto :goto_3

    :cond_4
    move-object/from16 v18, v12

    invoke-virtual {v6}, Landroid/util/JsonReader;->skipValue()V

    :goto_3
    move-object/from16 v12, v18

    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v18, v12

    invoke-virtual {v6}, Landroid/util/JsonReader;->endObject()V

    invoke-virtual {v6}, Landroid/util/JsonReader;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v6, 0x1

    iput v6, v7, Ldgr;->b:I

    invoke-virtual {v7}, Ldgr;->a()Ldgs;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ldgb; {:try_start_8 .. :try_end_8} :catch_c

    goto :goto_7

    :cond_6
    move-object/from16 v18, v12

    const/4 v6, 0x0

    :try_start_9
    invoke-static {v4, v6, v13, v14}, Ldgo;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x191

    if-eq v0, v6, :cond_a

    const/16 v6, 0x194

    if-ne v0, v6, :cond_7

    goto :goto_6

    :cond_7
    const/16 v6, 0x1ad

    if-eq v0, v6, :cond_9

    const/16 v6, 0x1f4

    if-lt v0, v6, :cond_8

    const/16 v6, 0x258

    if-ge v0, v6, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {}, Ldgo;->a()V

    invoke-static {}, Ldgs;->a()Ldgr;

    move-result-object v0

    const/4 v6, 0x2

    iput v6, v0, Ldgr;->b:I

    invoke-virtual {v0}, Ldgr;->a()Ldgs;

    move-result-object v0

    goto :goto_4

    :cond_9
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_a
    :goto_6
    invoke-static {}, Ldgs;->a()Ldgr;

    move-result-object v0

    const/4 v6, 0x3

    iput v6, v0, Ldgr;->b:I

    invoke-virtual {v0}, Ldgr;->a()Ldgs;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :goto_7
    :try_start_a
    iget v3, v0, Ldgs;->c:I

    add-int/lit8 v4, v3, -0x1

    if-eqz v3, :cond_e

    if-eqz v4, :cond_d

    const/4 v3, 0x1

    if-eq v4, v3, :cond_c

    const/4 v3, 0x2

    if-ne v4, v3, :cond_b

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ldfz;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Ldgn;->f()Ldgm;

    move-result-object v0

    invoke-virtual {v0, v3}, Ldgm;->a(I)V

    :goto_8
    invoke-virtual {v0}, Ldgm;->a()Ldgn;

    move-result-object v0

    goto/16 :goto_19

    :cond_b
    new-instance v0, Ldgb;

    const-string v3, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {v0, v3}, Ldgb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_9
    invoke-virtual {v5}, Ldgn;->g()Ldgn;

    move-result-object v0

    goto/16 :goto_19

    :cond_d
    iget-object v3, v0, Ldgs;->a:Ljava/lang/String;

    iget-wide v6, v0, Ldgs;->b:J

    invoke-static {}, Ldgj;->a()J

    move-result-wide v8

    invoke-virtual {v5}, Ldgn;->f()Ldgm;

    move-result-object v0

    iput-object v3, v0, Ldgm;->b:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Ldgm;->a(J)V

    invoke-virtual {v0, v8, v9}, Ldgm;->b(J)V

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    throw v3
    :try_end_a
    .catch Ldgb; {:try_start_a .. :try_end_a} :catch_c

    :catch_0
    move-exception v0

    move-object/from16 v18, v12

    :try_start_b
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catch_1
    move-exception v0

    goto :goto_a

    :catchall_0
    move-exception v0

    :try_start_c
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :catch_2
    move-exception v0

    move-object/from16 v18, v12

    :goto_a
    add-int/lit8 v9, v9, 0x1

    :goto_b
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v12, v18

    const/16 v7, 0xc8

    const/4 v8, 0x2

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_f
    new-instance v0, Ldgb;

    const-string v3, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {v0, v3}, Ldgb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-void

    :cond_11
    :goto_c
    iget-object v0, v5, Ldgn;->a:Ljava/lang/String;

    const/4 v3, 0x4

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xb

    if-ne v0, v4, :cond_15

    iget-object v0, v2, Ldfz;->e:Ldgk;

    iget-object v4, v0, Ldgk;->b:Landroid/content/SharedPreferences;

    monitor-enter v4
    :try_end_c
    .catch Ldgb; {:try_start_c .. :try_end_c} :catch_c

    :try_start_d
    sget-object v6, Ldgk;->a:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v7, :cond_14

    aget-object v11, v6, v8

    iget-object v12, v0, Ldgk;->c:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v3

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "|T|"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "|"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Ldgk;->b:Landroid/content/SharedPreferences;

    const/4 v13, 0x0

    invoke-interface {v12, v11, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_13

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_13

    const-string v0, "{"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v0, :cond_12

    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "token"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-object v6, v0

    goto :goto_e

    :catch_3
    move-exception v0

    const/4 v6, 0x0

    goto :goto_e

    :cond_12
    move-object v6, v11

    :goto_e
    :try_start_f
    monitor-exit v4

    goto :goto_10

    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_14
    monitor-exit v4

    goto :goto_f

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v0

    :cond_15
    :goto_f
    const/4 v6, 0x0

    :goto_10
    iget-object v4, v2, Ldfz;->b:Ldgo;

    invoke-virtual {v2}, Ldfz;->c()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Ldgn;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ldfz;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ldfz;->b()Ljava/lang/String;

    move-result-object v12

    const-string v0, "projects/%s/installations"

    const/4 v10, 0x1

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v11, v13, v9

    invoke-static {v0, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldgo;->b(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    :goto_11
    if-gt v9, v10, :cond_2a

    invoke-virtual {v4, v13, v7}, Ldgo;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v14
    :try_end_10
    .catch Ldgb; {:try_start_10 .. :try_end_10} :catch_c

    :try_start_11
    const-string v0, "POST"

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    if-eqz v6, :cond_16

    :try_start_12
    const-string v0, "x-goog-fis-android-iid-migration-auth"

    invoke-virtual {v14, v0, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :cond_16
    :try_start_13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v15, "fid"

    invoke-virtual {v0, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v15, "appId"

    invoke-virtual {v0, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v15, "authVersion"

    const-string v10, "FIS_v2"

    invoke-virtual {v0, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "sdkVersion"

    const-string v15, "a:16.3.3_1p"

    invoke-virtual {v0, v10, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    invoke-static {v0}, Ldgo;->a(Lorg/json/JSONObject;)[B

    move-result-object v0

    invoke-static {v14, v0}, Ldgo;->a(Ljava/net/URLConnection;[B)V

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v15, 0xc8

    if-ne v0, v15, :cond_1f

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v10, Landroid/util/JsonReader;

    new-instance v15, Ljava/io/InputStreamReader;

    sget-object v3, Ldgo;->a:Ljava/nio/charset/Charset;

    invoke-direct {v15, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v10, v15}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {}, Ldgs;->a()Ldgr;

    move-result-object v3

    invoke-static {}, Ldgq;->a()Ldgp;

    move-result-object v15

    invoke-virtual {v10}, Landroid/util/JsonReader;->beginObject()V

    :goto_12
    invoke-virtual {v10}, Landroid/util/JsonReader;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1e

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    move-object/from16 v19, v4

    :try_start_15
    const-string v4, "name"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Ldgp;->a:Ljava/lang/String;

    :goto_13
    move-object/from16 v1, p0

    move-object/from16 v4, v19

    goto :goto_12

    :cond_17
    const-string v4, "fid"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Ldgp;->b:Ljava/lang/String;

    goto :goto_13

    :cond_18
    const-string v4, "refreshToken"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Ldgp;->c:Ljava/lang/String;

    goto :goto_13

    :cond_19
    const-string v4, "authToken"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v10}, Landroid/util/JsonReader;->beginObject()V

    :goto_14
    invoke-virtual {v10}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "token"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ldgr;->a:Ljava/lang/String;

    goto :goto_14

    :cond_1a
    const-string v4, "expiresIn"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    move-object v4, v8

    move/from16 v20, v9

    :try_start_16
    invoke-static {v1}, Ldgo;->a(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ldgr;->a(J)V

    goto :goto_15

    :cond_1b
    move-object v4, v8

    move/from16 v20, v9

    invoke-virtual {v10}, Landroid/util/JsonReader;->skipValue()V

    :goto_15
    move-object v8, v4

    move/from16 v9, v20

    goto :goto_14

    :cond_1c
    move-object v4, v8

    move/from16 v20, v9

    invoke-virtual {v3}, Ldgr;->a()Ldgs;

    move-result-object v1

    iput-object v1, v15, Ldgp;->d:Ldgs;

    invoke-virtual {v10}, Landroid/util/JsonReader;->endObject()V

    goto :goto_16

    :cond_1d
    move-object v4, v8

    move/from16 v20, v9

    invoke-virtual {v10}, Landroid/util/JsonReader;->skipValue()V

    :goto_16
    move-object/from16 v1, p0

    move-object v8, v4

    move-object/from16 v4, v19

    move/from16 v9, v20

    goto/16 :goto_12

    :catch_4
    move-exception v0

    goto/16 :goto_1c

    :cond_1e
    move-object/from16 v19, v4

    move-object v4, v8

    move/from16 v20, v9

    invoke-virtual {v10}, Landroid/util/JsonReader;->endObject()V

    invoke-virtual {v10}, Landroid/util/JsonReader;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x1

    iput v1, v15, Ldgp;->e:I

    invoke-virtual {v15}, Ldgp;->a()Ldgq;

    move-result-object v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :goto_17
    :try_start_17
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17
    .catch Ldgb; {:try_start_17 .. :try_end_17} :catch_c

    goto :goto_18

    :cond_1f
    move-object/from16 v19, v4

    move-object v4, v8

    move/from16 v20, v9

    :try_start_18
    invoke-static {v14, v12, v7, v11}, Ldgo;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    const/16 v1, 0x1ad

    const/16 v3, 0x1f4

    const/16 v8, 0x258

    if-eq v0, v1, :cond_29

    if-lt v0, v3, :cond_20

    if-ge v0, v8, :cond_20

    goto/16 :goto_1b

    :cond_20
    :try_start_19
    invoke-static {}, Ldgo;->a()V

    invoke-static {}, Ldgq;->a()Ldgp;

    move-result-object v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    const/4 v9, 0x2

    :try_start_1a
    iput v9, v0, Ldgp;->e:I

    invoke-virtual {v0}, Ldgp;->a()Ldgq;

    move-result-object v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_5
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    goto :goto_17

    :goto_18
    :try_start_1b
    iget v1, v0, Ldgq;->d:I

    add-int/lit8 v3, v1, -0x1

    if-eqz v1, :cond_28

    if-eqz v3, :cond_22

    const/4 v10, 0x1

    if-ne v3, v10, :cond_21

    goto/16 :goto_9

    :cond_21
    new-instance v0, Ldgb;

    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {v0, v1}, Ldgb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iget-object v1, v0, Ldgq;->a:Ljava/lang/String;

    iget-object v3, v0, Ldgq;->b:Ljava/lang/String;

    invoke-static {}, Ldgj;->a()J

    move-result-wide v6

    iget-object v0, v0, Ldgq;->c:Ldgs;

    iget-object v4, v0, Ldgs;->a:Ljava/lang/String;

    iget-wide v8, v0, Ldgs;->b:J

    invoke-virtual {v5}, Ldgn;->f()Ldgm;

    move-result-object v0

    iput-object v1, v0, Ldgm;->a:Ljava/lang/String;

    const/4 v15, 0x4

    invoke-virtual {v0, v15}, Ldgm;->a(I)V

    iput-object v4, v0, Ldgm;->b:Ljava/lang/String;

    iput-object v3, v0, Ldgm;->c:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Ldgm;->a(J)V

    invoke-virtual {v0, v6, v7}, Ldgm;->b(J)V
    :try_end_1b
    .catch Ldgb; {:try_start_1b .. :try_end_1b} :catch_c

    goto/16 :goto_8

    :goto_19
    sget-object v1, Ldfz;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1c
    iget-object v3, v2, Ldfz;->a:Ldbb;

    invoke-virtual {v3}, Ldbb;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ldfu;->a(Landroid/content/Context;)Ldfu;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    :try_start_1d
    iget-object v4, v2, Ldfz;->c:Ldgl;

    invoke-virtual {v4, v0}, Ldgl;->a(Ldgn;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    if-eqz v3, :cond_23

    :try_start_1e
    invoke-virtual {v3}, Ldfu;->a()V

    :cond_23
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    invoke-virtual {v0}, Ldgn;->a()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, v0, Ldgn;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ldfz;->a(Ljava/lang/String;)V

    :cond_24
    invoke-virtual {v0}, Ldgn;->b()Z

    move-result v1

    if-eqz v1, :cond_25

    new-instance v1, Ldgb;

    invoke-direct {v1}, Ldgb;-><init>()V

    :goto_1a
    invoke-virtual {v2, v0, v1}, Ldfz;->a(Ldgn;Ljava/lang/Exception;)V

    return-void

    :cond_25
    invoke-virtual {v0}, Ldgn;->d()Z

    move-result v1

    if-eqz v1, :cond_26

    new-instance v1, Ljava/io/IOException;

    const-string v3, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_1a

    :cond_26
    invoke-virtual {v2, v0}, Ldfz;->a(Ldgn;)V

    return-void

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_27

    :try_start_1f
    invoke-virtual {v3}, Ldfu;->a()V

    :cond_27
    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    throw v0

    :cond_28
    const/16 v16, 0x0

    :try_start_20
    throw v16
    :try_end_20
    .catch Ldgb; {:try_start_20 .. :try_end_20} :catch_c

    :catch_5
    move-exception v0

    goto :goto_1f

    :catch_6
    move-exception v0

    goto :goto_1e

    :cond_29
    :goto_1b
    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v15, 0x4

    const/16 v16, 0x0

    add-int/lit8 v0, v20, 0x1

    goto :goto_22

    :catch_7
    move-exception v0

    goto :goto_1d

    :catch_8
    move-exception v0

    move-object/from16 v19, v4

    :goto_1c
    move-object v4, v8

    move/from16 v20, v9

    :goto_1d
    const/16 v3, 0x1f4

    const/16 v8, 0x258

    :goto_1e
    const/4 v9, 0x2

    :goto_1f
    const/4 v10, 0x1

    goto :goto_20

    :catch_9
    move-exception v0

    move-object/from16 v19, v4

    move-object v4, v8

    move/from16 v20, v9

    const/16 v3, 0x1f4

    const/16 v8, 0x258

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v15, 0x4

    const/16 v16, 0x0

    :try_start_21
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_a
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    :catch_a
    move-exception v0

    goto :goto_21

    :catchall_4
    move-exception v0

    :try_start_22
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :catch_b
    move-exception v0

    move-object/from16 v19, v4

    move-object v4, v8

    move/from16 v20, v9

    const/16 v3, 0x1f4

    const/16 v8, 0x258

    const/4 v9, 0x2

    :goto_20
    const/4 v15, 0x4

    const/16 v16, 0x0

    :goto_21
    add-int/lit8 v0, v20, 0x1

    :goto_22
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v1, p0

    move v9, v0

    move-object v8, v4

    move-object/from16 v4, v19

    const/4 v3, 0x4

    goto/16 :goto_11

    :cond_2a
    new-instance v0, Ldgb;

    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {v0, v1}, Ldgb;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catch Ldgb; {:try_start_22 .. :try_end_22} :catch_c

    :catch_c
    move-exception v0

    invoke-virtual {v2, v5, v0}, Ldfz;->a(Ldgn;Ljava/lang/Exception;)V

    return-void

    :catchall_5
    move-exception v0

    if-eqz v4, :cond_2b

    :try_start_23
    invoke-virtual {v4}, Ldfu;->a()V

    :cond_2b
    throw v0

    :catchall_6
    move-exception v0

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    goto :goto_24

    :goto_23
    throw v0

    :goto_24
    goto :goto_23
.end method
