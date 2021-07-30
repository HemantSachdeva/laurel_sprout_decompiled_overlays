.class final synthetic Lbsj;
.super Ljava/lang/Object;

# interfaces
.implements Leip;


# instance fields
.field private final a:Lbsr;


# direct methods
.method public constructor <init>(Lbsr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsj;->a:Lbsr;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbsj;->a:Lbsr;

    iget-object v0, v0, Lbsr;->c:Landroid/app/Application;

    invoke-static {v0}, Lbum;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
