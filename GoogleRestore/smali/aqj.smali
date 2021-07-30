.class final synthetic Laqj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Laqm;


# direct methods
.method public constructor <init>(Laqm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqj;->a:Laqm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Laqj;->a:Laqm;

    invoke-virtual {v0}, Laqm;->c()V

    return-void
.end method
