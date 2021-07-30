.class final synthetic Lddw;
.super Ljava/lang/Object;

# interfaces
.implements Lbom;


# instance fields
.field private final a:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lddw;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lddw;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lbpi;)Ljava/lang/Object;
    .locals 4

    iget-object p1, p0, Lddw;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v0, p0, Lddw;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ljava/lang/String;)Ldfi;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ldfi;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance p1, Ldei;

    iget-object v0, v2, Ldfi;->b:Ljava/lang/String;

    invoke-direct {p1, v0}, Ldei;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lbqb;->a(Ljava/lang/Object;)Lbpi;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/google/firebase/iid/FirebaseInstanceId;->g:Ldez;

    new-instance v3, Lddz;

    invoke-direct {v3, p1, v1, v0}, Lddz;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Ldez;->a(Ljava/lang/String;Lddz;)Lbpi;

    move-result-object p1

    :goto_0
    return-object p1
.end method
