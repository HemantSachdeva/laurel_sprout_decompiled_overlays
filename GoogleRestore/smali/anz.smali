.class final synthetic Lanz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Laoh;


# direct methods
.method public constructor <init>(Laoh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanz;->a:Laoh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lanz;->a:Laoh;

    invoke-virtual {v0}, Laoh;->b()V

    const/4 v0, 0x0

    return-object v0
.end method
