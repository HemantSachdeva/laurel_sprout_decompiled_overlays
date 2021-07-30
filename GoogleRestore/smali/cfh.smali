.class public final Lcfh;
.super Lcfp;
.source "PG"


# instance fields
.field private a:I

.field private b:Lcek;

.field private c:Lceh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcfp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    new-instance p2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcfh;->a:I

    .line 6
    invoke-direct {p2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    iget-object p1, p0, Lcfh;->b:Lcek;

    new-instance p2, Lcfg;

    .line 8
    invoke-direct {p2, p0}, Lcfg;-><init>(Lcfh;)V

    invoke-interface {p1}, Lcek;->g()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcfp;->a(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lba;->k:Landroid/os/Bundle;

    .line 3
    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcfh;->a:I

    .line 4
    const-string v0, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcek;

    iput-object v0, p0, Lcfh;->b:Lcek;

    .line 5
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lceh;

    iput-object p1, p0, Lcfh;->c:Lceh;

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lcfh;->a:I

    .line 9
    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcfh;->b:Lcek;

    .line 10
    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcfh;->c:Lceh;

    .line 11
    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
