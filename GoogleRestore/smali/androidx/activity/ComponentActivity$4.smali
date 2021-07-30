.class public Landroidx/activity/ComponentActivity$4;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lk;


# instance fields
.field final synthetic a:Lsi;


# direct methods
.method public constructor <init>(Lsi;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Lsi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll;Lh;)V
    .locals 0

    .line 1
    sget-object p1, Lh;->f:Lh;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Lsi;

    .line 2
    invoke-virtual {p1}, Lsi;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Lsi;

    .line 3
    invoke-virtual {p1}, Lsi;->ac()Laj;

    move-result-object p1

    invoke-virtual {p1}, Laj;->b()V

    :cond_0
    return-void
.end method
