.class public final Ldxx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldxw;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ldxv;

.field public final e:Ldxv;

.field private final f:Z


# direct methods
.method public constructor <init>(Ldxw;Ljava/lang/String;Ldxv;Ldxv;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 2
    const-string v0, "type"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Ldxx;->a:Ldxw;

    .line 3
    const-string p1, "fullMethodName"

    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Ldxx;->b:Ljava/lang/String;

    .line 4
    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p1, 0x2f

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    iput-object p1, p0, Ldxx;->c:Ljava/lang/String;

    .line 6
    const-string p1, "requestMarshaller"

    invoke-static {p3, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Ldxx;->d:Ldxv;

    .line 7
    const-string p1, "responseMarshaller"

    invoke-static {p4, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p4, p0, Ldxx;->e:Ldxv;

    iput-boolean p5, p0, Ldxx;->f:Z

    return-void
.end method

.method public static a()Ldxu;
    .locals 2

    new-instance v0, Ldxu;

    invoke-direct {v0}, Ldxu;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Ldxu;->a:Ldxv;

    iput-object v1, v0, Ldxu;->b:Ldxv;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 8
    const-string v0, "fullServiceName"

    invoke-static {p0, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    const-string v0, "methodName"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 10
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Ldxx;->b:Ljava/lang/String;

    .line 11
    const-string v2, "fullMethodName"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldxx;->a:Ldxw;

    .line 12
    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    const-string v1, "idempotent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcqs;->a(Ljava/lang/String;Z)V

    .line 14
    const-string v1, "safe"

    invoke-virtual {v0, v1, v2}, Lcqs;->a(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Ldxx;->f:Z

    .line 15
    const-string v2, "sampledToLocalTracing"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Z)V

    iget-object v1, p0, Ldxx;->d:Ldxv;

    .line 16
    const-string v2, "requestMarshaller"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldxx;->e:Ldxv;

    .line 17
    const-string v2, "responseMarshaller"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    const-string v1, "schemaDescriptor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcqs;->a:Z

    .line 19
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
