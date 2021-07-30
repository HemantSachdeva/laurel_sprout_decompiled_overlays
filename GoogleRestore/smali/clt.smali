.class public final Lclt;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Unknown"

    iput-object v0, p0, Lclt;->a:Ljava/lang/String;

    iput-object v0, p0, Lclt;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 3
    const-string v0, "VisibleUsingXml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Invisible"

    const-string v3, "Visible"

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Illegal visibility state: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 9
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "Invisible_to_Visible"

    return-object p0

    :cond_2
    nop

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "VisibleUsingXml_to_Invisible"

    return-object p0

    .line 7
    :cond_3
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "Visible_to_Invisible"

    return-object p0

    .line 8
    :cond_4
    return-object p0
.end method

.method public static final c(ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    if-eq p0, p1, :cond_0

    const-string p0, "Visible"

    goto :goto_0

    :cond_0
    const-string p0, "VisibleUsingXml"

    goto :goto_0

    :cond_1
    const-string p0, "Invisible"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 2

    iget-object v0, p0, Lclt;->a:Ljava/lang/String;

    .line 1
    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lclt;->c(ZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lclt;->a:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lclt;->a:Ljava/lang/String;

    return-void
.end method

.method public final b(ZZ)V
    .locals 2

    iget-object v0, p0, Lclt;->b:Ljava/lang/String;

    .line 2
    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lclt;->c(ZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lclt;->b:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lclt;->b:Ljava/lang/String;

    return-void
.end method
