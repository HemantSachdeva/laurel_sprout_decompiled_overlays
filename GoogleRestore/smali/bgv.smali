.class public final Lbgv;
.super Lboa;
.source "PG"

# interfaces
.implements Lbet;
.implements Lbeu;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/Set;

.field public final d:Lbho;

.field public e:Lbgi;

.field public f:Lboe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lbnw;->a:Lbej;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lbho;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lboa;-><init>()V

    iput-object p1, p0, Lbgv;->a:Landroid/content/Context;

    iput-object p2, p0, Lbgv;->b:Landroid/os/Handler;

    iput-object p3, p0, Lbgv;->d:Lbho;

    iget-object p1, p3, Lbho;->a:Ljava/util/Set;

    iput-object p1, p0, Lbgv;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 27

    move-object/from16 v1, p0

    const-string v0, "serverAuthCode"

    const-string v2, "familyName"

    const-string v3, "givenName"

    const-string v4, "displayName"

    const-string v5, "email"

    const-string v6, "tokenId"

    const-string v7, "<<default account>>"

    iget-object v8, v1, Lbgv;->f:Lboe;

    :try_start_0
    new-instance v11, Landroid/accounts/Account;

    const-string v12, "com.google"

    .line 3
    invoke-direct {v11, v7, v12}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v12, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v7, :cond_a

    :try_start_1
    iget-object v7, v8, Lbhl;->b:Landroid/content/Context;

    .line 5
    invoke-static {v7}, Lasj;->a(Landroid/content/Context;)Lasj;

    move-result-object v7

    const-string v12, "defaultGoogleSignInAccount"

    .line 6
    invoke-virtual {v7, v12}, Lasj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 7
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_8

    .line 39
    :cond_0
    const-string v13, "googleSignInAccount"

    .line 8
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 9
    invoke-virtual {v7, v12}, Lasj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v7, :cond_a

    .line 10
    :try_start_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v2, 0x0

    goto/16 :goto_8

    .line 11
    :cond_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "photoUrl"

    .line 12
    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v13, :cond_2

    .line 14
    :try_start_3
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v19, v7

    goto :goto_0

    .line 31
    :cond_2
    const/16 v19, 0x0

    .line 14
    :goto_0
    :try_start_4
    const-string v7, "expirationTime"

    .line 15
    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    new-instance v7, Ljava/util/HashSet;

    .line 16
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const-string v15, "grantedScopes"

    .line 17
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 18
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/16 v16, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_3

    move/from16 v16, v10

    new-instance v10, Lcom/google/android/gms/common/api/Scope;

    .line 19
    invoke-virtual {v15, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move/from16 v10, v16

    goto :goto_1

    :cond_3
    const-string v1, "id"

    .line 20
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 21
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_2

    .line 31
    :cond_4
    const/16 v16, 0x0

    .line 21
    :goto_2
    nop

    .line 22
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_3

    .line 31
    :cond_5
    const/16 v17, 0x0

    .line 22
    :goto_3
    nop

    .line 23
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_4

    .line 31
    :cond_6
    const/16 v18, 0x0

    .line 23
    :goto_4
    nop

    .line 24
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v25, v1

    goto :goto_5

    .line 31
    :cond_7
    const/16 v25, 0x0

    .line 24
    :goto_5
    nop

    .line 25
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v26, v1

    goto :goto_6

    .line 31
    :cond_8
    const/16 v26, 0x0

    .line 26
    :goto_6
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "obfuscatedIdentifier"

    .line 27
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    new-instance v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 29
    invoke-static/range {v23 .. v23}, Lbir;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v14, 0x3

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v24, v1

    invoke-direct/range {v13 .. v26}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    iput-object v0, v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->g:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    .line 43
    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_8

    .line 31
    :catch_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_9

    :cond_a
    const/4 v2, 0x0

    .line 7
    :goto_8
    :try_start_5
    new-instance v0, Lbis;

    iget-object v1, v8, Lboe;->q:Ljava/lang/Integer;

    .line 32
    invoke-static {v1}, Lbir;->a(Ljava/lang/Object;)V

    const/4 v3, 0x2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 33
    invoke-direct {v0, v3, v11, v1, v2}, Lbis;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 34
    invoke-virtual {v8}, Lbhl;->s()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lbob;

    new-instance v2, Lbof;

    .line 35
    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lbof;-><init>(ILbis;)V

    .line 36
    invoke-virtual {v1}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 37
    invoke-static {v0, v2}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 38
    move-object/from16 v2, p0

    :try_start_6
    invoke-static {v0, v2}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v3, 0xc

    .line 39
    invoke-virtual {v1, v3, v0}, Lact;->b(ILandroid/os/Parcel;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    return-void

    .line 31
    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v2, v1

    :goto_9
    move-object v1, v0

    .line 40
    const-string v3, "SignInClientImpl"

    const-string v0, "Remote service probably died when signIn is called"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    new-instance v0, Lboh;

    .line 41
    new-instance v4, Lbds;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lbds;-><init>(ILandroid/app/PendingIntent;)V

    .line 42
    const/4 v5, 0x1

    invoke-direct {v0, v5, v4, v6}, Lboh;-><init>(ILbds;Lbiu;)V

    .line 43
    invoke-virtual {v2, v0}, Lboa;->a(Lboh;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    return-void

    :catch_4
    move-exception v0

    .line 44
    const-string v0, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v3, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final a(I)V
    .locals 0

    iget-object p1, p0, Lbgv;->f:Lboe;

    .line 46
    invoke-virtual {p1}, Lbhl;->o()V

    return-void
.end method

.method public final a(Lbds;)V
    .locals 1

    iget-object v0, p0, Lbgv;->e:Lbgi;

    .line 45
    invoke-virtual {v0, p1}, Lbgi;->b(Lbds;)V

    return-void
.end method

.method public final a(Lboh;)V
    .locals 2

    iget-object v0, p0, Lbgv;->b:Landroid/os/Handler;

    new-instance v1, Lbgu;

    .line 47
    invoke-direct {v1, p0, p1}, Lbgu;-><init>(Lbgv;Lboh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
