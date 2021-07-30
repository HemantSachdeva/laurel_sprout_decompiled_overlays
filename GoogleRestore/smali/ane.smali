.class final synthetic Lane;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lann;


# direct methods
.method public constructor <init>(Lann;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lane;->a:Lann;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lane;->a:Lann;

    iget-object v1, v0, Lann;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lann;->a(Ljava/lang/String;)Lbpi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lann;->a(Lbpi;)V

    return-void
.end method
