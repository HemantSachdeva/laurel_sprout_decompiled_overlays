.class public final Lcir;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final synthetic a:Lciw;


# direct methods
.method public constructor <init>(Lciw;)V
    .locals 0

    iput-object p1, p0, Lcir;->a:Lciw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcir;->a:Lciw;

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lciw;->a(I)V

    return-void
.end method
