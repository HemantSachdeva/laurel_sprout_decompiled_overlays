.class public Lbdz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final b:I

.field public static final c:Lbdz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lbei;->a:I

    sput v0, Lbdz;->b:I

    new-instance v0, Lbdz;

    invoke-direct {v0}, Lbdz;-><init>()V

    sput-object v0, Lbdz;->c:Lbdz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 1

    sget v0, Lbdz;->b:I

    .line 20
    invoke-virtual {p0, p1, v0}, Lbdz;->a(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public final a(Landroid/content/Context;I)I
    .locals 0

    .line 21
    invoke-static {p1, p2}, Lbei;->a(Landroid/content/Context;I)I

    move-result p2

    .line 22
    invoke-static {p1, p2}, Lbei;->c(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    return p1

    :cond_0
    return p2
.end method

.method public final a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    .line 17
    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {}, Lbih;->a()Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    invoke-static {p1}, Lbjg;->b(Landroid/content/Context;)V

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    const-string v0, "gcore_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lbdz;->b:I

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    nop

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    nop

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    .line 13
    :try_start_0
    invoke-static {p1}, Lbjo;->b(Landroid/content/Context;)Lbjn;

    move-result-object p3

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Lbjn;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 15
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 16
    :cond_5
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lbih;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lbdz;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p3, 0x0

    const/high16 v0, 0x8000000

    .line 19
    invoke-static {p1, p3, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method
