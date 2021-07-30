.class final synthetic Lbtw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbua;


# direct methods
.method public constructor <init>(Lbua;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbtw;->a:Lbua;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbtw;->a:Lbua;

    iget-object v1, v0, Lbua;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a(Z)V

    invoke-virtual {v0}, Lbua;->a()V

    return-void
.end method
