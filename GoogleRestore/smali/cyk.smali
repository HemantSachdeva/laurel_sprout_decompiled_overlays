.class final Lcyk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcyr;

.field final b:Lczu;


# direct methods
.method public constructor <init>(Lcyr;Lczu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcyk;->a:Lcyr;

    iput-object p2, p0, Lcyk;->b:Lczu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcyk;->a:Lcyr;

    .line 1
    sget-boolean v1, Lcyr;->e:Z

    .line 2
    iget-object v0, v0, Lcyr;->value:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcyk;->b:Lczu;

    .line 3
    invoke-static {v0}, Lcyr;->a(Lczu;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcyr;->f:Lcye;

    iget-object v2, p0, Lcyk;->a:Lcyr;

    .line 4
    invoke-virtual {v1, v2, p0, v0}, Lcye;->a(Lcyr;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcyk;->a:Lcyr;

    .line 5
    invoke-static {v0}, Lcyr;->a(Lcyr;)V

    :cond_1
    return-void
.end method
