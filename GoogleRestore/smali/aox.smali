.class public final Laox;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lacw;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "AppDetailsManager"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Laox;->a:Lacw;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Laox;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Lj$/util/stream/Stream;)J
    .locals 2

    .line 3
    sget-object v0, Laot;->a:Lj$/util/function/ToLongFunction;

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->mapToLong(Lj$/util/function/ToLongFunction;)Lj$/util/stream/LongStream;

    move-result-object p0

    invoke-interface {p0}, Lj$/util/stream/LongStream;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Laow;I)Landroid/os/Bundle;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-gez p1, :cond_0

    sget-object p0, Laox;->a:Lacw;

    new-array p1, v1, [Ljava/lang/Object;

    .line 183
    const-string v1, "Done retrying call."

    invoke-virtual {p0, v1, p1}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 184
    :cond_0
    :try_start_0
    invoke-interface {p0}, Laow;->a()Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    sget-object v2, Laox;->a:Lacw;

    new-array v3, v1, [Ljava/lang/Object;

    .line 188
    const-string v4, "Null bundle returned from Play store. AIDL might be out of sync."

    invoke-virtual {v2, v4, v3}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_1
    nop

    .line 189
    const-string v3, "document_groups"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v2, Laox;->a:Lacw;

    new-array v3, v1, [Ljava/lang/Object;

    .line 190
    const-string v4, "Null document groups returned. No packages were found or Play is in bad state."

    invoke-virtual {v2, v4, v3}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :goto_0
    sget-object v2, Land;->s:Lccv;

    invoke-virtual {v2}, Lccv;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Laox;->a:Lacw;

    new-array v1, v1, [Ljava/lang/Object;

    .line 192
    const-string v2, "Play bundle didn\'t pass validation, retrying"

    invoke-virtual {v0, v2, v1}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Land;->s:Lccv;

    .line 193
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 p1, p1, -0x1

    .line 194
    invoke-static {p0, p1}, Laox;->a(Laow;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 190
    :cond_3
    nop

    .line 195
    const-string v0, "error"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v2

    .line 196
    :cond_4
    const-string v2, "reason"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    const-string v3, "exception_type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Laox;->a:Lacw;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 198
    const-string v0, "Cannot get apps from Play store. Error reason = %s, exception = %s."

    invoke-virtual {v3, v0, v4}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    sget-object v0, Land;->r:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 p1, p1, -0x1

    .line 200
    invoke-static {p0, p1}, Laox;->a(Laow;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    sget-object v2, Laox;->a:Lacw;

    new-array v1, v1, [Ljava/lang/Object;

    .line 185
    const-string v3, "RemoteException calling Play; retrying."

    invoke-virtual {v2, v3, v0, v1}, Laqd;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 186
    sget-object v0, Land;->r:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 p1, p1, -0x1

    .line 187
    invoke-static {p0, p1}, Laox;->a(Laow;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;J)Lcsi;
    .locals 3

    .line 36
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    sget-object v1, Land;->q:Lccv;

    .line 37
    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Laor;

    .line 38
    invoke-direct {v2, p0, v0, p2, p3}, Laor;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {v2, v1}, Laox;->a(Laow;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    .line 39
    invoke-static {}, Lcsi;->f()Lcsi;

    move-result-object p0

    return-object p0

    .line 40
    :cond_0
    invoke-static {p0, p1}, Laox;->a(Landroid/os/Bundle;Landroid/accounts/Account;)Lcsi;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/os/Bundle;Landroid/accounts/Account;)Lcsi;
    .locals 14

    sget-object v0, Laox;->a:Lacw;

    .line 12
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Laqd;->a(I)Z

    move-result v2

    const-string v3, "documents"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    sget-object v2, Land;->ac:Lccv;

    invoke-virtual {v2}, Lccv;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    const-string v2, "unrestorable_document_groups"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    if-nez v2, :cond_0

    new-array v2, v5, [Ljava/lang/Object;

    .line 14
    const-string v6, "unrestorableDocumentGroups=null"

    invoke-virtual {v0, v6, v2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 35
    :cond_0
    array-length v0, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_3

    .line 15
    aget-object v7, v2, v6

    .line 16
    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    if-nez v7, :cond_1

    sget-object v7, Laox;->a:Lacw;

    new-array v8, v5, [Ljava/lang/Object;

    .line 17
    const-string v9, "unrestorablePackages=null"

    invoke-virtual {v7, v9, v8}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    nop

    .line 18
    const/4 v8, 0x0

    invoke-static {v7, v8, v8, v5}, Laox;->a([Landroid/os/Parcelable;Landroid/accounts/Account;Ljava/lang/String;I)Lcsi;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_2

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 19
    check-cast v10, Laop;

    sget-object v11, Laox;->a:Lacw;

    new-array v12, v1, [Ljava/lang/Object;

    iget-object v13, v10, Laop;->e:Ljava/lang/String;

    aput-object v13, v12, v5

    iget v10, v10, Laop;->b:I

    .line 20
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v12, v4

    .line 21
    const-string v10, "App %s is unavailable with reason %d"

    invoke-virtual {v11, v10, v12}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 17
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 14
    :cond_3
    :goto_3
    nop

    .line 22
    const-string v0, "document_groups"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p0

    if-nez p0, :cond_4

    sget-object p0, Laox;->a:Lacw;

    new-array p1, v5, [Ljava/lang/Object;

    .line 23
    const-string v0, "Null document groups returned. No packages were found or AIDL might be out of sync."

    invoke-virtual {p0, v0, p1}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-static {}, Lcsi;->f()Lcsi;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Lcsf;

    .line 25
    invoke-direct {v0}, Lcsf;-><init>()V

    array-length v2, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v6, v2, :cond_6

    .line 26
    aget-object v8, p0, v6

    .line 27
    check-cast v8, Landroid/os/Bundle;

    const-string v9, "title"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 28
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    if-nez v8, :cond_5

    sget-object v8, Laox;->a:Lacw;

    new-array v9, v5, [Ljava/lang/Object;

    .line 29
    const-string v10, "0 documents in document group %s"

    invoke-virtual {v8, v10, v9}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 30
    :cond_5
    invoke-static {v8, p1, v9, v7}, Laox;->a([Landroid/os/Parcelable;Landroid/accounts/Account;Ljava/lang/String;I)Lcsi;

    move-result-object v10

    sget-object v11, Laox;->a:Lacw;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    array-length v8, v8

    .line 31
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v5

    aput-object v9, v12, v4

    invoke-static {v10}, Lj$/util/Collection$$CC;->stream$$dflt$$(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v8

    sget-object v9, Laos;->a:Lj$/util/function/Function;

    .line 32
    invoke-interface {v8, v9}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v8

    const-string v9, ","

    invoke-static {v9}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v9

    invoke-interface {v8, v9}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v12, v1

    .line 33
    const-string v8, "%d documents in document group %s: %s"

    invoke-virtual {v11, v8, v12}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v0, v10}, Lcsf;->a(Ljava/lang/Iterable;)V

    .line 29
    :goto_5
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 35
    :cond_6
    invoke-virtual {v0}, Lcsf;->a()Lcsi;

    move-result-object p0

    return-object p0
.end method

.method private static a([Landroid/os/Parcelable;Landroid/accounts/Account;Ljava/lang/String;I)Lcsi;
    .locals 12

    array-length v0, p0

    .line 4
    invoke-static {}, Lcsi;->h()Lcsf;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 5
    aget-object v4, p0, v3

    .line 6
    :try_start_0
    move-object v6, v4

    check-cast v6, Landroid/os/Bundle;

    .line 7
    new-instance v4, Laop;

    const/4 v10, 0x0

    const/4 v11, 0x2

    .line 8
    move-object v5, v4

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v5 .. v11}, Laop;-><init>(Landroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;IZI)V

    .line 9
    invoke-virtual {v1, v4}, Lcsf;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Laoy; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 11
    :catch_0
    move-exception v4

    sget-object v5, Laox;->a:Lacw;

    new-array v6, v2, [Ljava/lang/Object;

    .line 10
    const-string v7, "Package details parse error"

    invoke-virtual {v5, v7, v4, v6}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 9
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcsf;->a()Lcsi;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Collection;)Lj$/util/stream/Stream;
    .locals 1

    .line 129
    invoke-static {p0}, Lj$/util/Collection$$Dispatch;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    sget-object v0, Laou;->a:Lj$/util/function/Predicate;

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Lj$/util/stream/Stream;
    .locals 2

    .line 147
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$$Dispatch;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Laov;

    invoke-direct {v1, p0}, Laov;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/Collection;)V
    .locals 11

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget-object p2, Laox;->a:Lacw;

    new-array v1, v0, [Ljava/lang/Object;

    .line 170
    const-string v2, "Apps list was null, calling restore with 0 apps."

    invoke-virtual {p2, v2, v1}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 172
    :cond_0
    invoke-static {p2}, Laox;->b(Ljava/util/Collection;)[Landroid/os/Bundle;

    move-result-object p2

    .line 173
    invoke-static {p0}, Laqh;->b(Landroid/content/Context;)Laal;

    move-result-object p0

    sget-object v1, Laox;->a:Lacw;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    array-length v4, p2

    .line 174
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const-string v6, "%d packages to restore for %s"

    invoke-virtual {v1, v6, v3}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    sget-object v3, Land;->j:Lccv;

    invoke-virtual {v3}, Lccv;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    if-lez v4, :cond_2

    new-array v4, v0, [Ljava/lang/Object;

    .line 178
    const-string v5, "Batching restore calls to Play"

    invoke-virtual {v1, v5, v4}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_1

    add-int v5, v1, v3

    .line 179
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sget-object v6, Laox;->a:Lacw;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    sub-int v9, v4, v1

    .line 180
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    iget-object v9, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v9, v8, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v9, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 181
    const-string v9, "Calling Play service to restore %d packages for %s. Start index=%d, end index=%d"

    invoke-virtual {v6, v9, v8}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p2, v1, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Bundle;

    invoke-interface {p0, v6, v1}, Laam;->a(Ljava/lang/String;[Landroid/os/Bundle;)V

    move v1, v5

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-array v2, v7, [Ljava/lang/Object;

    aput-object v5, v2, v0

    .line 176
    const-string v0, "Calling Play service to restore %d packages"

    invoke-virtual {v1, v0, v2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Laam;->a(Ljava/lang/String;[Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Laox;->a:Lacw;

    new-array v1, v0, [Ljava/lang/Object;

    .line 149
    const-string v2, "Apps list was null, calling restore with 0 apps."

    invoke-virtual {p1, v2, v1}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 151
    :cond_0
    invoke-static {p1}, Laox;->b(Ljava/util/Collection;)[Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    .line 152
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 153
    const-string v3, "documents"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 154
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_3

    .line 155
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 157
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 158
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 159
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v3, "numberToAdvance must be nonnegative"

    invoke-static {v4, v3}, Lcrj;->a(ZLjava/lang/Object;)V

    .line 163
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 157
    :goto_0
    nop

    .line 166
    check-cast p1, Laop;

    iget p1, p1, Laop;->m:I

    const-string v3, "documents_type"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 163
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    .line 164
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "position (0) must be less than the number of elements that remained ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :cond_3
    :goto_1
    sget-object p1, Laox;->a:Lacw;

    new-array v3, v4, [Ljava/lang/Object;

    array-length v1, v1

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "Calling Play service to setup %d packages."

    invoke-virtual {p1, v0, v3}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Laox;

    .line 168
    invoke-direct {p1, p0}, Laox;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Laox;->a()Laao;

    move-result-object p0

    .line 169
    invoke-interface {p0, v2}, Laap;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;JILaka;)[Landroid/os/Parcelable;
    .locals 13

    move-object v1, p1

    move-object/from16 v5, p5

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-gez p4, :cond_0

    sget-object v1, Laox;->a:Lacw;

    new-array v2, v2, [Ljava/lang/Object;

    .line 132
    const-string v3, "Done retrying call to getPackagesForDevice."

    invoke-virtual {v1, v3, v2}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 133
    :cond_0
    invoke-static {p0}, Laqh;->b(Landroid/content/Context;)Laal;

    move-result-object v3

    sget-object v4, Laox;->a:Lacw;

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    .line 134
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v7, v10

    .line 135
    const-string v9, "Fetching apps from %s for account: %s with androidId: %d"

    invoke-virtual {v4, v9, v7}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    move-wide v11, p2

    invoke-interface {v3, p1, v11, v12}, Laam;->a(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    .line 137
    const-string v2, "Null bundle returned from Play store. AIDL might be out of sync."

    invoke-virtual {v4, v2, v1}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    nop

    .line 138
    const-string v0, "error"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 139
    sget-object v0, Lbas;->b:Lbas;

    invoke-virtual {v5, v0, v2}, Laka;->a(Lbas;I)V

    .line 140
    const-string v0, "packages"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    :cond_2
    nop

    .line 141
    const-string v3, "reason"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 142
    const-string v7, "Cannot get apps from Play store. Error = %s."

    invoke-virtual {v4, v7, v3}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    sget-object v3, Lbas;->b:Lbas;

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v7, -0x78621251

    const/4 v9, -0x1

    if-eq v4, v7, :cond_6

    const v7, -0x10fa53b6

    if-eq v4, v7, :cond_5

    const v2, -0x400db87

    if-eq v4, v2, :cond_4

    :cond_3
    goto :goto_0

    .line 145
    :cond_4
    nop

    .line 144
    const-string v2, "network_failure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const-string v4, "unknown"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_6
    const-string v2, "no_account"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_9

    if-eq v2, v8, :cond_8

    if-eq v2, v10, :cond_7

    const/4 v6, -0x1

    goto :goto_2

    .line 145
    :cond_7
    goto :goto_2

    :cond_8
    const/4 v6, 0x2

    goto :goto_2

    :cond_9
    const/4 v6, 0x1

    .line 143
    :goto_2
    invoke-virtual {v5, v3, v6}, Laka;->a(Lbas;I)V

    add-int/lit8 v4, p4, -0x1

    .line 145
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Laox;->a(Landroid/content/Context;Ljava/lang/String;JILaka;)[Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/accounts/Account;J)Lcsi;
    .locals 10

    .line 41
    new-instance v6, Laka;

    sget-object v0, Lbby;->a:Lbby;

    invoke-direct {v6, p0, v0}, Laka;-><init>(Landroid/content/Context;Lbby;)V

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v6, Laka;->f:J

    iget-object v0, v6, Laka;->i:Ldjy;

    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 43
    check-cast v1, Lbao;

    iget v1, v1, Lbao;->b:I

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v2, -0xa

    if-ne v1, v2, :cond_1

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v9, v0, Ldjy;->b:Z

    :cond_0
    iget-object v0, v0, Ldjy;->a:Ldkd;

    .line 45
    check-cast v0, Lbao;

    iget v1, v0, Lbao;->a:I

    or-int/2addr v1, v8

    iput v1, v0, Lbao;->a:I

    iput v7, v0, Lbao;->b:I

    .line 46
    :cond_1
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    sget-object v0, Land;->q:Lccv;

    .line 47
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 48
    move-object v0, p0

    move-wide v2, p2

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Laox;->a(Landroid/content/Context;Ljava/lang/String;JILaka;)[Landroid/os/Parcelable;

    move-result-object p0

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iget-object v0, v6, Laka;->i:Ldjy;

    iget-wide v1, v6, Laka;->f:J

    sub-long/2addr p2, v1

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v9, v0, Ldjy;->b:Z

    :cond_2
    iget-object v0, v0, Ldjy;->a:Ldkd;

    .line 51
    check-cast v0, Lbao;

    iget v1, v0, Lbao;->a:I

    const/4 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Lbao;->a:I

    iput-wide p2, v0, Lbao;->c:J

    iget-object p2, v6, Laka;->i:Ldjy;

    iget-object p3, p2, Ldjy;->a:Ldkd;

    .line 52
    check-cast p3, Lbao;

    iget p3, p3, Lbao;->b:I

    if-ne p3, v7, :cond_4

    iget-boolean p3, p2, Ldjy;->b:Z

    if-eqz p3, :cond_3

    .line 53
    invoke-virtual {p2}, Ldjy;->b()V

    iput-boolean v9, p2, Ldjy;->b:Z

    :cond_3
    iget-object p2, p2, Ldjy;->a:Ldkd;

    .line 54
    check-cast p2, Lbao;

    iget p3, p2, Lbao;->a:I

    or-int/2addr p3, v8

    iput p3, p2, Lbao;->a:I

    iput v9, p2, Lbao;->b:I

    goto :goto_0

    .line 92
    :cond_4
    sget-object p2, Laka;->a:Laqd;

    const-string p3, "Migrate status code overwritten explicitly"

    new-array v0, v9, [Ljava/lang/Object;

    .line 55
    invoke-virtual {p2, p3, v0}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :goto_0
    iget-object p2, v6, Laka;->i:Ldjy;

    iget-boolean p3, p2, Ldjy;->b:Z

    if-eqz p3, :cond_5

    .line 56
    invoke-virtual {p2}, Ldjy;->b()V

    iput-boolean v9, p2, Ldjy;->b:Z

    :cond_5
    iget-object p3, p2, Ldjy;->a:Ldkd;

    .line 57
    check-cast p3, Lbao;

    .line 58
    invoke-static {}, Lbao;->k()Ldkk;

    move-result-object v0

    iput-object v0, p3, Lbao;->f:Ldkk;

    iget-object p3, v6, Laka;->h:Ljava/util/ArrayList;

    iget-boolean v0, p2, Ldjy;->b:Z

    if-eqz v0, :cond_6

    .line 59
    invoke-virtual {p2}, Ldjy;->b()V

    iput-boolean v9, p2, Ldjy;->b:Z

    :cond_6
    iget-object p2, p2, Ldjy;->a:Ldkd;

    .line 60
    check-cast p2, Lbao;

    iget-object v0, p2, Lbao;->f:Ldkk;

    .line 61
    invoke-interface {v0}, Ldkk;->a()Z

    move-result v1

    if-nez v1, :cond_7

    .line 62
    invoke-static {v0}, Ldkd;->a(Ldkk;)Ldkk;

    move-result-object v0

    iput-object v0, p2, Lbao;->f:Ldkk;

    :cond_7
    iget-object p2, p2, Lbao;->f:Ldkk;

    .line 63
    invoke-static {p3, p2}, Ldhh;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iget-object v0, v6, Laka;->j:Ldjy;

    iget-wide v3, v6, Laka;->e:J

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_8

    .line 65
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v9, v0, Ldjy;->b:Z

    :cond_8
    iget-object v0, v0, Ldjy;->a:Ldkd;

    .line 66
    check-cast v0, Lbbz;

    sget-object v1, Lbbz;->h:Lbbz;

    iget v1, v0, Lbbz;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Lbbz;->a:I

    iput-wide v3, v0, Lbbz;->g:J

    iget-object v0, v6, Laka;->j:Ldjy;

    iget-wide v3, v6, Laka;->e:J

    sub-long/2addr p2, v3

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_9

    .line 67
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v9, v0, Ldjy;->b:Z

    :cond_9
    iget-object v0, v0, Ldjy;->a:Ldkd;

    .line 68
    check-cast v0, Lbbz;

    iget v1, v0, Lbbz;->a:I

    or-int/2addr v1, v2

    iput v1, v0, Lbbz;->a:I

    iput-wide p2, v0, Lbbz;->c:J

    iget-object p2, v6, Laka;->j:Ldjy;

    .line 69
    invoke-virtual {v6}, Laka;->a()I

    move-result p3

    iget-boolean v0, p2, Ldjy;->b:Z

    if-eqz v0, :cond_a

    .line 70
    invoke-virtual {p2}, Ldjy;->b()V

    iput-boolean v9, p2, Ldjy;->b:Z

    :cond_a
    iget-object p2, p2, Ldjy;->a:Ldkd;

    .line 71
    check-cast p2, Lbbz;

    iget v0, p2, Lbbz;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p2, Lbbz;->a:I

    iput p3, p2, Lbbz;->e:I

    iget-object p2, v6, Laka;->c:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object p3, v6, Laka;->c:Ljava/util/ArrayList;

    iget-object v0, v6, Laka;->j:Ldjy;

    .line 72
    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Lbbz;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p3, v6, Laka;->b:Ljava/util/ArrayList;

    monitor-enter p3

    :try_start_1
    iget-object p2, v6, Laka;->i:Ldjy;

    iget-boolean v0, p2, Ldjy;->b:Z

    if-eqz v0, :cond_b

    .line 74
    invoke-virtual {p2}, Ldjy;->b()V

    iput-boolean v9, p2, Ldjy;->b:Z

    :cond_b
    iget-object v0, p2, Ldjy;->a:Ldkd;

    .line 75
    check-cast v0, Lbao;

    .line 76
    invoke-static {}, Lbao;->k()Ldkk;

    move-result-object v1

    iput-object v1, v0, Lbao;->g:Ldkk;

    iget-object v0, v6, Laka;->b:Ljava/util/ArrayList;

    iget-boolean v1, p2, Ldjy;->b:Z

    if-eqz v1, :cond_c

    .line 77
    invoke-virtual {p2}, Ldjy;->b()V

    iput-boolean v9, p2, Ldjy;->b:Z

    :cond_c
    iget-object p2, p2, Ldjy;->a:Ldkd;

    .line 78
    check-cast p2, Lbao;

    iget-object v1, p2, Lbao;->g:Ldkk;

    .line 79
    invoke-interface {v1}, Ldkk;->a()Z

    move-result v3

    if-nez v3, :cond_d

    .line 80
    invoke-static {v1}, Ldkd;->a(Ldkk;)Ldkk;

    move-result-object v1

    iput-object v1, p2, Lbao;->g:Ldkk;

    :cond_d
    iget-object p2, p2, Lbao;->g:Ldkk;

    .line 81
    invoke-static {v0, p2}, Ldhh;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 82
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    sget-object p2, Lban;->e:Lban;

    sget-object p3, Land;->t:Lccv;

    .line 84
    invoke-virtual {p3}, Lccv;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_14

    iget-object p3, v6, Laka;->i:Ldjy;

    .line 85
    invoke-virtual {p3}, Ldjy;->f()Ldkd;

    move-result-object p3

    check-cast p3, Lbao;

    sget-object v0, Land;->u:Lccv;

    .line 86
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v6, Laka;->g:Lapm;

    .line 87
    invoke-virtual {p3}, Ldhi;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lapm;->a([B)Lbde;

    move-result-object v0

    iget p2, p2, Lban;->i:I

    invoke-virtual {v0, p2}, Lbde;->a(I)V

    .line 88
    invoke-virtual {v0}, Lbde;->a()Lbun;

    sget-object p2, Laka;->a:Laqd;

    new-array v0, v8, [Ljava/lang/Object;

    iget v1, p3, Lbao;->a:I

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_f

    iget-object p3, p3, Lbao;->d:Lbap;

    if-nez p3, :cond_e

    .line 89
    sget-object p3, Lbap;->b:Lbap;

    :cond_e
    iget-object p3, p3, Lbap;->a:Ljava/lang/String;

    goto :goto_1

    .line 102
    :cond_f
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_11

    iget-object p3, p3, Lbao;->e:Lbaq;

    if-nez p3, :cond_10

    .line 90
    sget-object p3, Lbaq;->b:Lbaq;

    :cond_10
    iget-object p3, p3, Lbaq;->a:Ljava/lang/String;

    goto :goto_1

    :cond_11
    and-int/lit8 p3, v1, 0x4

    if-eqz p3, :cond_12

    const-string p3, "[iOS session has no tracer]"

    goto :goto_1

    :cond_12
    const-string p3, "[no tracer found]"

    .line 89
    :goto_1
    aput-object p3, v0, v9

    const-string p3, "Sending log to clearcut with tracer %s"

    .line 91
    invoke-virtual {p2, p3, v0}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 90
    :cond_13
    iget-object p2, v6, Laka;->d:Landroid/content/Context;

    .line 92
    invoke-static {p2, p3}, Lakb;->a(Landroid/content/Context;Lbao;)V

    .line 91
    :cond_14
    :goto_2
    if-nez p0, :cond_15

    .line 93
    invoke-static {}, Lcsi;->f()Lcsi;

    move-result-object p0

    return-object p0

    :cond_15
    sget-object p2, Laox;->a:Lacw;

    new-array p3, v2, [Ljava/lang/Object;

    array-length v0, p0

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v9

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, p3, v8

    const-string v1, "Fetched %d apps for %s"

    invoke-virtual {p2, v1, p3}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Lcsi;->h()Lcsf;

    move-result-object p2

    const/4 p3, 0x0

    :goto_3
    if-ge p3, v0, :cond_16

    .line 96
    aget-object v1, p0, p3

    .line 97
    :try_start_2
    move-object v3, v1

    check-cast v3, Landroid/os/Bundle;

    .line 98
    new-instance v1, Laop;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 99
    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Laop;-><init>(Landroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;IZI)V

    .line 100
    invoke-virtual {p2, v1}, Lcsf;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Laoy; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 82
    :catch_0
    move-exception v1

    sget-object v2, Laox;->a:Lacw;

    const-string v3, "Parse error: "

    new-array v4, v9, [Ljava/lang/Object;

    .line 101
    invoke-virtual {v2, v3, v1, v4}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 100
    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 102
    :cond_16
    invoke-virtual {p2}, Lcsf;->a()Lcsi;

    move-result-object p0

    return-object p0

    .line 73
    :catchall_0
    move-exception p0

    .line 82
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 55
    :catchall_1
    move-exception p0

    .line 73
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method public static b(Ljava/util/Map;)Ljava/util/Map;
    .locals 12

    new-instance v0, Ljava/util/LinkedHashMap;

    .line 103
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 104
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/TreeMap;

    .line 105
    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    .line 106
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 107
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laop;

    iget v6, v5, Laop;->k:I

    iget-object v7, v5, Laop;->j:Ljava/lang/String;

    .line 108
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-nez v8, :cond_2

    .line 109
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 110
    invoke-virtual {v2, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {v2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v11

    .line 113
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Laox;->a:Lacw;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v9

    aput-object v6, v10, v11

    .line 115
    const-string v6, "Added group \"%s\" as next available id=%d."

    invoke-virtual {v8, v6, v10}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Laox;->a:Lacw;

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v7, v8, v9

    .line 117
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v11

    .line 118
    const-string v9, "Merging group \"%s\" with existing group with id=%d."

    invoke-virtual {v6, v9, v8}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :cond_3
    :goto_1
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 120
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    new-instance v6, Ljava/util/HashMap;

    .line 121
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 122
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-interface {v6, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 124
    :cond_5
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method private static b(Ljava/util/Collection;)[Landroid/os/Bundle;
    .locals 3

    .line 126
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    .line 127
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laop;

    iget-object v2, v2, Laop;->g:Landroid/os/Bundle;

    .line 128
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static c(Ljava/util/Map;)I
    .locals 2

    .line 130
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 131
    invoke-static {p0}, Laox;->a(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Lj$/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static d(Ljava/util/Map;)I
    .locals 2

    .line 148
    invoke-static {p0}, Laox;->a(Ljava/util/Map;)Lj$/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Lj$/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method


# virtual methods
.method public final a()Laao;
    .locals 1

    iget-object v0, p0, Laox;->b:Landroid/content/Context;

    .line 146
    invoke-static {v0}, Laqh;->a(Landroid/content/Context;)Laao;

    move-result-object v0

    return-object v0
.end method
