.class public final synthetic Lddy;
.super Ljava/lang/Object;

# interfaces
.implements Lbox;


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lddy;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final a(Lbpi;)V
    .locals 1

    iget-object p1, p0, Lddy;->a:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->a:Ldfj;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
