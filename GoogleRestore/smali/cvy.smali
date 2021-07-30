.class public final Lcvy;
.super Lcvl;
.source "PG"


# static fields
.field private static final c:Ldav;


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldav;

    invoke-direct {v0}, Ldav;-><init>()V

    sput-object v0, Lcvy;->c:Ldav;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcvl;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    const/16 v0, 0x2e

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v2, 0x24

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 5
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/String;

    .line 5
    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    if-nez p3, :cond_2

    .line 7
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 7
    :goto_1
    iput-object p1, p0, Lcvy;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lcvy;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcuy;)V
    .locals 1

    iget-boolean v0, p0, Lcvy;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Lcvw;

    .line 9
    invoke-direct {v0, p1}, Lcvw;-><init>(Lcuy;)V

    move-object p1, v0

    :cond_0
    sget-object v0, Lcvy;->c:Ldav;

    .line 10
    invoke-static {p1, p0, v0}, Lcvg;->a(Lcuy;Lcvy;Ldav;)V

    return-void
.end method

.method public final a(Ljava/util/logging/Level;)Z
    .locals 1

    .line 8
    invoke-static {p1}, Lcvs;->a(Ljava/util/logging/Level;)I

    move-result p1

    iget-object v0, p0, Lcvy;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "all"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
