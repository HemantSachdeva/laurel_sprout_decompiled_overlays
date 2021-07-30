.class final synthetic Lbwh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbwl;


# direct methods
.method public constructor <init>(Lbwl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbwh;->a:Lbwl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbwh;->a:Lbwl;

    invoke-virtual {v0}, Lbwl;->e()V

    return-void
.end method
