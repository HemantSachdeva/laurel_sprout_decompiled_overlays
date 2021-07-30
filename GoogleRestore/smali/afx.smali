.class final synthetic Lafx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lafy;


# direct methods
.method public constructor <init>(Lafy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafx;->a:Lafy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lafx;->a:Lafy;

    invoke-virtual {v0}, Lafy;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv;->b(Ljava/lang/Object;)V

    return-void
.end method
