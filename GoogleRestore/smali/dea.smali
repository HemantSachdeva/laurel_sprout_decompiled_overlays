.class final synthetic Ldea;
.super Ljava/lang/Object;

# interfaces
.implements Lbph;


# instance fields
.field private final a:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldea;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Ldea;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lbpi;
    .locals 4

    iget-object v0, p0, Ldea;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Ldea;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    sget-object v2, Lcom/google/firebase/iid/FirebaseInstanceId;->a:Ldfj;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/google/firebase/iid/FirebaseInstanceId;->e:Ldeu;

    invoke-virtual {v0}, Ldeu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v1, p1, v0}, Ldfj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ldei;

    invoke-direct {v0, p1}, Ldei;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbqb;->a(Ljava/lang/Object;)Lbpi;

    move-result-object p1

    return-object p1
.end method
