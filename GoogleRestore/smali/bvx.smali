.class final synthetic Lbvx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbvy;


# direct methods
.method public constructor <init>(Lbvy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbvx;->a:Lbvy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbvx;->a:Lbvy;

    invoke-virtual {v0}, Lbvy;->d()V

    return-void
.end method
