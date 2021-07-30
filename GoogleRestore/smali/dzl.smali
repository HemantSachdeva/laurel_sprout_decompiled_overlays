.class final Ldzl;
.super Lorg/chromium/net/BidirectionalStream$Callback;
.source "PG"


# instance fields
.field final synthetic a:Ldzo;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ldzo;)V
    .locals 0

    iput-object p1, p0, Ldzl;->a:Ldzo;

    invoke-direct {p0}, Lorg/chromium/net/BidirectionalStream$Callback;-><init>()V

    return-void
.end method

.method private static final a(Lorg/chromium/net/UrlResponseInfo;)Ldyv;
    .locals 0

    .line 141
    invoke-virtual {p0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result p0

    invoke-static {p0}, Ledp;->a(I)Ldyv;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/util/List;Z)V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    .line 92
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 97
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 98
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v3, v2, 0x1

    .line 99
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    aput-object v4, p1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 100
    :cond_1
    invoke-static {p1}, Lehy;->a([[B)[[B

    move-result-object p1

    invoke-static {p1}, Ldwr;->a([[B)Ldxt;

    move-result-object p1

    iget-object v0, p0, Ldzl;->a:Ldzo;

    .line 101
    sget-object v2, Ldzo;->a:Ljava/nio/ByteBuffer;

    .line 102
    iget-object v0, v0, Ldzo;->p:Leds;

    .line 101
    sget-object v2, Leds;->m:Ldxp;

    .line 103
    iget-object v0, v0, Leds;->r:Ljava/lang/Object;

    .line 101
    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Ldzl;->a:Ldzo;

    .line 104
    iget-object v2, v2, Ldzo;->p:Leds;

    const/4 v3, 0x1

    if-eqz p2, :cond_9

    iget-object p2, v2, Leds;->n:Ldyv;

    if-nez p2, :cond_2

    iget-boolean v4, v2, Leds;->q:Z

    if-nez v4, :cond_2

    .line 125
    invoke-static {p1}, Leds;->c(Ldxt;)Ldyv;

    move-result-object p2

    iput-object p2, v2, Leds;->n:Ldyv;

    iget-object p2, v2, Leds;->n:Ldyv;

    if-eqz p2, :cond_2

    iput-object p1, v2, Leds;->o:Ldxt;

    :cond_2
    if-eqz p2, :cond_3

    .line 138
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "trailers: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ldyv;->b(Ljava/lang/String;)Ldyv;

    move-result-object p1

    iput-object p1, v2, Leds;->n:Ldyv;

    iget-object p1, v2, Leds;->n:Ldyv;

    iget-object p2, v2, Leds;->o:Ldxt;

    .line 139
    invoke-virtual {v2, p1, v1, p2}, Leds;->b(Ldyv;ZLdxt;)V

    goto/16 :goto_9

    .line 126
    :cond_3
    sget-object p2, Ldws;->b:Ldxp;

    invoke-virtual {p1, p2}, Ldxt;->a(Ldxp;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldyv;

    if-eqz p2, :cond_4

    sget-object v4, Ldws;->a:Ldxp;

    .line 127
    invoke-virtual {p1, v4}, Ldxt;->a(Ldxp;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p2

    goto :goto_3

    .line 137
    :cond_4
    iget-boolean p2, v2, Leds;->q:Z

    if-eqz p2, :cond_5

    .line 128
    sget-object p2, Ldyv;->d:Ldyv;

    const-string v4, "missing GRPC status in response"

    invoke-virtual {p2, v4}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p2

    goto :goto_3

    :cond_5
    sget-object p2, Leds;->m:Ldxp;

    .line 129
    invoke-virtual {p1, p2}, Ldxt;->a(Ldxp;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_6

    .line 131
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Ledp;->a(I)Ldyv;

    move-result-object p2

    goto :goto_2

    .line 130
    :cond_6
    sget-object p2, Ldyv;->h:Ldyv;

    const-string v4, "missing HTTP status code"

    invoke-virtual {p2, v4}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p2

    .line 131
    :goto_2
    const-string v4, "missing GRPC status, inferred error from HTTP status code"

    .line 132
    invoke-virtual {p2, v4}, Ldyv;->b(Ljava/lang/String;)Ldyv;

    move-result-object p2

    .line 133
    :goto_3
    invoke-static {p1}, Leds;->b(Ldxt;)V

    iget-boolean v4, v2, Leac;->l:Z

    if-eqz v4, :cond_7

    sget-object v5, Ldzw;->q:Ljava/util/logging/Logger;

    .line 134
    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v2, 0x2

    new-array v10, v2, [Ljava/lang/Object;

    aput-object p2, v10, v1

    aput-object p1, v10, v3

    const-string v7, "io.grpc.internal.AbstractClientStream$TransportState"

    const-string v8, "inboundTrailersReceived"

    const-string v9, "Received trailers on closed stream:\n {1}\n {2}"

    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_7
    iget-object v3, v2, Leac;->h:Leht;

    iget-object v3, v3, Leht;->c:[Lehc;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_8

    .line 135
    aget-object v6, v3, v5

    .line 136
    check-cast v6, Ldvr;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    nop

    .line 137
    invoke-virtual {v2, p2, v1, p1}, Leac;->a(Ldyv;ZLdxt;)V

    goto/16 :goto_9

    .line 130
    :cond_9
    iget-object p2, v2, Leds;->n:Ldyv;

    if-eqz p2, :cond_a

    .line 105
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "headers: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ldyv;->b(Ljava/lang/String;)Ldyv;

    move-result-object p1

    iput-object p1, v2, Leds;->n:Ldyv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_9

    :cond_a
    :try_start_1
    iget-boolean p2, v2, Leds;->q:Z

    if-eqz p2, :cond_b

    .line 106
    sget-object p2, Ldyv;->h:Ldyv;

    const-string v1, "Received headers twice"

    invoke-virtual {p2, v1}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p2

    iput-object p2, v2, Leds;->n:Ldyv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p2, v2, Leds;->n:Ldyv;

    if-eqz p2, :cond_12

    .line 107
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "headers: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ldyv;->b(Ljava/lang/String;)Ldyv;

    move-result-object p2

    iput-object p2, v2, Leds;->n:Ldyv;

    iput-object p1, v2, Leds;->o:Ldxt;

    .line 108
    invoke-static {p1}, Leds;->a(Ldxt;)Ljava/nio/charset/Charset;

    move-result-object p1

    :goto_5
    iput-object p1, v2, Leds;->p:Ljava/nio/charset/Charset;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_9

    :cond_b
    :try_start_3
    sget-object p2, Leds;->m:Ldxp;

    .line 109
    invoke-virtual {p1, p2}, Ldxt;->a(Ldxp;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_c

    .line 110
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_c

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v4, 0xc8

    if-ge p2, v4, :cond_c

    :try_start_4
    iget-object p2, v2, Leds;->n:Ldyv;

    if-eqz p2, :cond_12

    .line 107
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "headers: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ldyv;->b(Ljava/lang/String;)Ldyv;

    move-result-object p2

    iput-object p2, v2, Leds;->n:Ldyv;

    iput-object p1, v2, Leds;->o:Ldxt;

    .line 108
    invoke-static {p1}, Leds;->a(Ldxt;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :cond_c
    :try_start_5
    iput-boolean v3, v2, Leds;->q:Z

    .line 111
    invoke-static {p1}, Leds;->c(Ldxt;)Ldyv;

    move-result-object p2

    iput-object p2, v2, Leds;->n:Ldyv;

    iget-object p2, v2, Leds;->n:Ldyv;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p2, :cond_d

    .line 107
    :try_start_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "headers: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ldyv;->b(Ljava/lang/String;)Ldyv;

    move-result-object p2

    iput-object p2, v2, Leds;->n:Ldyv;

    iput-object p1, v2, Leds;->o:Ldxt;

    .line 108
    invoke-static {p1}, Leds;->a(Ldxt;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_5

    .line 112
    :cond_d
    :try_start_7
    invoke-static {p1}, Leds;->b(Ldxt;)V

    iget-boolean p2, v2, Leac;->l:Z

    xor-int/2addr p2, v3

    const-string v4, "Received headers on closed stream"

    .line 113
    invoke-static {p2, v4}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-object p2, v2, Leac;->h:Leht;

    iget-object p2, p2, Leht;->c:[Lehc;

    array-length v4, p2

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_e

    .line 114
    aget-object v6, p2, v5

    .line 115
    check-cast v6, Ldvr;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 116
    :cond_e
    sget-object p2, Ledp;->d:Ldxp;

    invoke-virtual {p1, p2}, Ldxt;->a(Ldxp;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object p2, Ledp;->b:Ldxp;

    .line 117
    invoke-virtual {p1, p2}, Ldxt;->a(Ldxp;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_11

    iget-object v4, v2, Leac;->j:Ldwf;

    iget-object v4, v4, Ldwf;->c:Ljava/util/Map;

    .line 118
    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldwe;

    if-eqz v4, :cond_f

    iget-object v4, v4, Ldwe;->a:Ldwd;

    goto :goto_7

    .line 123
    :cond_f
    const/4 v4, 0x0

    .line 118
    :goto_7
    if-nez v4, :cond_10

    .line 119
    sget-object v4, Ldyv;->h:Ldyv;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const-string p2, "Can\'t find decompressor for %s"

    .line 120
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p2

    .line 121
    invoke-virtual {p2}, Ldyv;->b()Ldyx;

    move-result-object p2

    .line 119
    invoke-virtual {v2, p2}, Leac;->a(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 108
    :cond_10
    sget-object p2, Ldvt;->a:Ldvu;

    if-eq v4, p2, :cond_11

    iget-object p2, v2, Leac;->a:Lebq;

    const-string v1, "Already set full stream decompressor"

    .line 122
    invoke-static {v3, v1}, Lcrj;->b(ZLjava/lang/Object;)V

    check-cast p2, Legc;

    iput-object v4, p2, Legc;->c:Ldwd;

    :cond_11
    iget-object p2, v2, Leac;->i:Lebe;

    .line 123
    invoke-interface {p2, p1}, Lebe;->a(Ldxt;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 119
    :goto_8
    :try_start_8
    iget-object p2, v2, Leds;->n:Ldyv;

    if-eqz p2, :cond_12

    .line 107
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "headers: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ldyv;->b(Ljava/lang/String;)Ldyv;

    move-result-object p2

    iput-object p2, v2, Leds;->n:Ldyv;

    iput-object p1, v2, Leds;->o:Ldxt;

    .line 108
    invoke-static {p1}, Leds;->a(Ldxt;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto/16 :goto_5

    .line 140
    :cond_12
    :goto_9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p2

    iget-object v1, v2, Leds;->n:Ldyv;

    if-eqz v1, :cond_13

    .line 107
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x9

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "headers: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ldyv;->b(Ljava/lang/String;)Ldyv;

    move-result-object v1

    iput-object v1, v2, Leds;->n:Ldyv;

    iput-object p1, v2, Leds;->o:Ldxt;

    .line 108
    invoke-static {p1}, Leds;->a(Ldxt;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, v2, Leds;->p:Ljava/nio/charset/Charset;

    .line 124
    :cond_13
    throw p2

    .line 123
    :catchall_1
    move-exception p1

    .line 140
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a
.end method


# virtual methods
.method public final onCanceled(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 1

    const-string p1, "grpc-java-cronet"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "grpc-java-cronet"

    const-string v0, "onCanceled"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Ldzl;->a:Ldzo;

    .line 2
    sget-object v0, Ldzo;->a:Ljava/nio/ByteBuffer;

    .line 3
    iget-object p1, p1, Ldzo;->p:Leds;

    .line 2
    sget-object v0, Leds;->m:Ldxp;

    .line 4
    iget-object p1, p1, Leds;->r:Ljava/lang/Object;

    .line 2
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Ldzl;->a:Ldzo;

    .line 5
    iget-object v0, v0, Ldzo;->p:Leds;

    .line 6
    iget-object v0, v0, Leds;->w:Ldyv;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    if-eqz p2, :cond_2

    .line 8
    invoke-static {p2}, Ldzl;->a(Lorg/chromium/net/UrlResponseInfo;)Ldyv;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_2
    sget-object p2, Ldyv;->c:Ldyv;

    const-string v0, "stream cancelled without reason"

    invoke-virtual {p2, v0}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v0

    .line 9
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ldzl;->a:Ldzo;

    .line 10
    invoke-virtual {p1, v0}, Ldzo;->a(Ldyv;)V

    return-void

    .line 7
    :catchall_0
    move-exception p2

    .line 9
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onFailed(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 0

    const-string p1, "grpc-java-cronet"

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 11
    const-string p2, "onFailed"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Ldzl;->a:Ldzo;

    .line 12
    sget-object p2, Ldyv;->i:Ldyv;

    invoke-virtual {p2, p3}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object p2

    sget-object p3, Ldzo;->a:Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p1, p2}, Ldzo;->a(Ldyv;)V

    return-void
.end method

.method public final onReadCompleted(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V
    .locals 4

    .line 14
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-string p1, "grpc-java-cronet"

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x21

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "onReadCompleted. Size="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "grpc-java-cronet"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Ldzl;->a:Ldzo;

    .line 16
    sget-object p2, Ldzo;->a:Ljava/nio/ByteBuffer;

    .line 17
    iget-object p1, p1, Ldzo;->p:Leds;

    .line 16
    sget-object p2, Leds;->m:Ldxp;

    .line 18
    iget-object p1, p1, Leds;->r:Ljava/lang/Object;

    .line 16
    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Ldzl;->a:Ldzo;

    .line 19
    iget-object p2, p2, Ldzo;->p:Leds;

    iput-boolean p4, p2, Leds;->x:Z

    .line 20
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Ldzl;->a:Ldzo;

    .line 21
    iget-object p2, p2, Ldzo;->p:Leds;

    iget v0, p2, Leds;->v:I

    .line 22
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Leds;->v:I

    .line 23
    invoke-static {p3}, Legw;->a(Ljava/nio/ByteBuffer;)Legs;

    move-result-object p3

    iget-object v0, p2, Leds;->n:Ldyv;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "DATA-----------------------------\n"

    iget-object v3, p2, Leds;->p:Ljava/nio/charset/Charset;

    .line 24
    invoke-static {p3, v3}, Legw;->a(Legs;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 37
    :cond_1
    new-instance p3, Ljava/lang/String;

    .line 24
    invoke-direct {p3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 25
    :goto_0
    invoke-virtual {v0, p3}, Ldyv;->b(Ljava/lang/String;)Ldyv;

    move-result-object p3

    iput-object p3, p2, Leds;->n:Ldyv;

    iget-object p3, p2, Leds;->n:Ldyv;

    iget-object p3, p3, Ldyv;->m:Ljava/lang/String;

    .line 26
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v0, 0x3e8

    if-le p3, v0, :cond_5

    iget-object p3, p2, Leds;->n:Ldyv;

    iget-object v0, p2, Leds;->o:Ldxt;

    .line 27
    invoke-virtual {p2, p3, v1, v0}, Leds;->b(Ldyv;ZLdxt;)V

    goto :goto_1

    .line 24
    :cond_2
    iget-boolean v0, p2, Leds;->q:Z

    if-nez v0, :cond_3

    .line 28
    sget-object p3, Ldyv;->h:Ldyv;

    const-string v0, "headers not received before payload"

    .line 29
    invoke-virtual {p3, v0}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p3

    new-instance v0, Ldxt;

    invoke-direct {v0}, Ldxt;-><init>()V

    .line 28
    invoke-virtual {p2, p3, v1, v0}, Leds;->b(Ldyv;ZLdxt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_1

    :cond_3
    :try_start_1
    iget-boolean v0, p2, Leac;->l:Z

    if-eqz v0, :cond_4

    sget-object p2, Ldzw;->q:Ljava/util/logging/Logger;

    .line 30
    sget-object p3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v0, "io.grpc.internal.AbstractClientStream$TransportState"

    const-string v1, "inboundDataReceived"

    const-string v2, "Received data on closed stream"

    invoke-virtual {p2, p3, v0, v1, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :cond_4
    :try_start_2
    iget-object v0, p2, Leac;->a:Lebq;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    move-object v1, v0

    check-cast v1, Legc;

    invoke-virtual {v1}, Legc;->b()Z

    move-result v1

    if-nez v1, :cond_5

    move-object v1, v0

    check-cast v1, Legc;

    iget-boolean v1, v1, Legc;->e:Z

    if-nez v1, :cond_5

    move-object v1, v0

    check-cast v1, Legc;

    iget-object v1, v1, Legc;->d:Lebl;

    .line 31
    invoke-virtual {v1, p3}, Lebl;->a(Legs;)V

    check-cast v0, Legc;

    .line 32
    invoke-virtual {v0}, Legc;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 35
    :catchall_0
    move-exception p3

    .line 33
    :try_start_4
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p3

    .line 34
    :try_start_5
    invoke-virtual {p2, p3}, Leac;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 36
    :catchall_2
    move-exception p2

    .line 35
    :try_start_6
    throw p2

    .line 36
    :cond_5
    :goto_1
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz p4, :cond_6

    iget-object p1, p0, Ldzl;->b:Ljava/util/List;

    if-eqz p1, :cond_6

    const/4 p2, 0x1

    .line 37
    invoke-direct {p0, p1, p2}, Ldzl;->a(Ljava/util/List;Z)V

    :cond_6
    return-void

    .line 32
    :catchall_3
    move-exception p2

    .line 36
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p2
.end method

.method public final onResponseHeadersReceived(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 4

    const-string v0, "grpc-java-cronet"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeadersAsList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x22

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onResponseHeadersReceived. Header="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v1, "BidirectionalStream.read"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeadersAsList()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ldzl;->a(Ljava/util/List;Z)V

    const/16 p2, 0x1000

    .line 41
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/chromium/net/BidirectionalStream;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public final onResponseTrailersReceived(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/UrlResponseInfo$HeaderBlock;)V
    .locals 0

    .line 42
    invoke-virtual {p3}, Lorg/chromium/net/UrlResponseInfo$HeaderBlock;->getAsList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ldzl;->b:Ljava/util/List;

    iget-object p2, p0, Ldzl;->a:Ldzo;

    .line 43
    sget-object p3, Ldzo;->a:Ljava/nio/ByteBuffer;

    .line 44
    iget-object p2, p2, Ldzo;->p:Leds;

    .line 43
    sget-object p3, Leds;->m:Ldxp;

    .line 45
    iget-object p2, p2, Leds;->r:Ljava/lang/Object;

    .line 43
    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Ldzl;->a:Ldzo;

    .line 46
    iget-object p3, p3, Ldzo;->p:Leds;

    .line 47
    iget-boolean p3, p3, Leds;->x:Z

    .line 48
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 49
    invoke-direct {p0, p1, p2}, Ldzl;->a(Ljava/util/List;Z)V

    :cond_0
    const-string p2, "grpc-java-cronet"

    const/4 p3, 0x2

    invoke-static {p2, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onResponseTrailersReceived. Trailer="

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string p2, "grpc-java-cronet"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 48
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onStreamReady(Lorg/chromium/net/BidirectionalStream;)V
    .locals 8

    const-string p1, "grpc-java-cronet"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "grpc-java-cronet"

    const-string v0, "onStreamReady"

    .line 51
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Ldzl;->a:Ldzo;

    .line 52
    sget-object v0, Ldzo;->a:Ljava/nio/ByteBuffer;

    .line 53
    iget-object p1, p1, Ldzo;->p:Leds;

    .line 52
    sget-object v0, Leds;->m:Ldxp;

    .line 54
    iget-object p1, p1, Leds;->r:Ljava/lang/Object;

    .line 52
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Ldzl;->a:Ldzo;

    .line 55
    iget-object v0, v0, Ldzo;->p:Leds;

    .line 56
    invoke-virtual {v0}, Leds;->b()V

    iget-object v0, p0, Ldzl;->a:Ldzo;

    .line 57
    iget-object v0, v0, Ldzo;->p:Leds;

    const/4 v1, 0x1

    iput-boolean v1, v0, Leds;->t:Z

    iget-object v1, v0, Leds;->s:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 58
    check-cast v4, Ldzm;

    iget-object v5, v0, Leds;->z:Ldzo;

    .line 59
    iget-object v6, v4, Ldzm;->a:Ljava/nio/ByteBuffer;

    iget-boolean v7, v4, Ldzm;->b:Z

    iget-boolean v4, v4, Ldzm;->c:Z

    .line 60
    invoke-virtual {v5, v6, v7, v4}, Ldzo;->a(Ljava/nio/ByteBuffer;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Leds;->s:Ljava/util/Collection;

    .line 61
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 62
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final onSucceeded(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 3

    const-string p1, "grpc-java-cronet"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "grpc-java-cronet"

    const-string v0, "onSucceeded"

    .line 63
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Ldzl;->a:Ldzo;

    .line 64
    sget-object v0, Ldzo;->a:Ljava/nio/ByteBuffer;

    .line 65
    iget-object p1, p1, Ldzo;->p:Leds;

    .line 64
    sget-object v0, Leds;->m:Ldxp;

    .line 66
    iget-object p1, p1, Leds;->r:Ljava/lang/Object;

    .line 64
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Ldzl;->b:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldzl;->a:Ldzo;

    .line 67
    iget-object v0, v0, Ldzo;->p:Leds;

    .line 68
    iget-boolean v0, v0, Leds;->x:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 72
    :cond_1
    nop

    .line 69
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    iget-object p1, p0, Ldzl;->b:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 71
    invoke-direct {p0, p1, v2}, Ldzl;->a(Ljava/util/List;Z)V

    goto :goto_1

    .line 74
    :cond_2
    if-eqz p2, :cond_3

    .line 72
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeadersAsList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Ldzl;->a(Ljava/util/List;Z)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "No response header or trailer"

    .line 75
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 71
    :cond_4
    :goto_1
    iget-object p1, p0, Ldzl;->a:Ldzo;

    .line 73
    invoke-static {p2}, Ldzl;->a(Lorg/chromium/net/UrlResponseInfo;)Ldyv;

    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Ldzo;->a(Ldyv;)V

    return-void

    .line 72
    :catchall_0
    move-exception p2

    .line 70
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onWriteCompleted(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V
    .locals 4

    const-string p1, "grpc-java-cronet"

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "grpc-java-cronet"

    const-string p2, "onWriteCompleted"

    .line 76
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Ldzl;->a:Ldzo;

    .line 77
    sget-object p2, Ldzo;->a:Ljava/nio/ByteBuffer;

    .line 78
    iget-object p1, p1, Ldzo;->p:Leds;

    .line 77
    sget-object p2, Leds;->m:Ldxp;

    .line 79
    iget-object p1, p1, Leds;->r:Ljava/lang/Object;

    .line 77
    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Ldzl;->a:Ldzo;

    .line 80
    iget-object p4, p2, Ldzo;->p:Leds;

    .line 81
    iget-boolean v0, p4, Leds;->y:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iput-boolean v2, p4, Leds;->y:Z

    .line 82
    iget-object p2, p2, Ldzo;->f:Leht;

    iget-object p2, p2, Leht;->c:[Lehc;

    array-length p4, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    .line 83
    aget-object v3, p2, v0

    .line 84
    check-cast v3, Ldvr;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Ldzl;->a:Ldzo;

    .line 85
    iget-object p2, p2, Ldzo;->p:Leds;

    .line 86
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    iget-object p4, p2, Leac;->b:Ljava/lang/Object;

    .line 87
    monitor-enter p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p2, Leac;->f:Z

    const-string v3, "onStreamAllocated was not called, but it seems the stream is active"

    .line 88
    invoke-static {v0, v3}, Lcrj;->b(ZLjava/lang/Object;)V

    iget v0, p2, Leac;->e:I

    sub-int p3, v0, p3

    iput p3, p2, Leac;->e:I

    const v3, 0x8000

    if-lt v0, v3, :cond_2

    if-ge p3, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 91
    :cond_2
    nop

    .line 89
    :goto_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 90
    :try_start_2
    invoke-virtual {p2}, Leac;->a()V

    .line 91
    :cond_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p2

    .line 89
    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    .line 91
    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method
