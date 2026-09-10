.class public Lcom/vkontakte/android/Message$FwdMessage;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FwdMessage"
.end annotation


# instance fields
.field public attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public displayableText:Ljava/lang/CharSequence;

.field public fwdMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message$FwdMessage;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public sender:I

.field public text:Ljava/lang/String;

.field public time:I

.field public username:Ljava/lang/String;

.field public userphoto:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/Message$FwdMessage;->username:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/Message$FwdMessage;->userphoto:Ljava/lang/String;

    return-void
.end method

.method public static deserialize(Ljava/io/DataInputStream;)Lcom/vkontakte/android/Message$FwdMessage;
    .locals 8
    .param p0, "s"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    new-instance v3, Lcom/vkontakte/android/Message$FwdMessage;

    invoke-direct {v3}, Lcom/vkontakte/android/Message$FwdMessage;-><init>()V

    .line 395
    .local v3, "m":Lcom/vkontakte/android/Message$FwdMessage;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v3, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    .line 396
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v3, Lcom/vkontakte/android/Message$FwdMessage;->time:I

    .line 397
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/Message$FwdMessage;->setText(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/Message$FwdMessage;->username:Ljava/lang/String;

    .line 399
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/Message$FwdMessage;->userphoto:Ljava/lang/String;

    .line 400
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v3, Lcom/vkontakte/android/Message$FwdMessage;->id:I

    .line 401
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 402
    .local v1, "atts":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v3, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    .line 403
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 404
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 405
    .local v5, "type":I
    invoke-static {p0, v5}, Lcom/vkontakte/android/Attachment;->deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;

    move-result-object v0

    .line 406
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    if-eqz v0, :cond_0

    .line 407
    iget-object v6, v3, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v5    # "type":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 410
    .local v4, "nfwd":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v3, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    .line 411
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    .line 412
    iget-object v6, v3, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/vkontakte/android/Message$FwdMessage;->deserialize(Ljava/io/DataInputStream;)Lcom/vkontakte/android/Message$FwdMessage;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 414
    :cond_2
    return-object v3
.end method


# virtual methods
.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    iget v3, p0, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 424
    iget v3, p0, Lcom/vkontakte/android/Message$FwdMessage;->time:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 425
    iget-object v3, p0, Lcom/vkontakte/android/Message$FwdMessage;->text:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 426
    iget-object v3, p0, Lcom/vkontakte/android/Message$FwdMessage;->username:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 427
    iget-object v3, p0, Lcom/vkontakte/android/Message$FwdMessage;->userphoto:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 428
    iget v3, p0, Lcom/vkontakte/android/Message$FwdMessage;->id:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 429
    iget-object v3, p0, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 430
    iget-object v3, p0, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 431
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v0, p1}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 433
    .end local v0    # "a":Lcom/vkontakte/android/Attachment;
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 434
    iget-object v3, p0, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message$FwdMessage;

    .line 435
    .local v2, "m":Lcom/vkontakte/android/Message$FwdMessage;
    invoke-virtual {v2, p1}, Lcom/vkontakte/android/Message$FwdMessage;->serialize(Ljava/io/DataOutputStream;)V

    goto :goto_1

    .line 437
    .end local v2    # "m":Lcom/vkontakte/android/Message$FwdMessage;
    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/vkontakte/android/Message$FwdMessage;->text:Ljava/lang/String;

    .line 419
    invoke-static {p1}, Lcom/vkontakte/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    .line 420
    return-void
.end method
