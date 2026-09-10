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
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/Message$FwdMessage;->username:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/Message$FwdMessage;->userphoto:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public static deserialize(Ljava/io/DataInputStream;)Lcom/vkontakte/android/Message$FwdMessage;
    .locals 7
    .param p0, "s"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    new-instance v2, Lcom/vkontakte/android/Message$FwdMessage;

    invoke-direct {v2}, Lcom/vkontakte/android/Message$FwdMessage;-><init>()V

    .line 312
    .local v2, "m":Lcom/vkontakte/android/Message$FwdMessage;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v2, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    .line 313
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v2, Lcom/vkontakte/android/Message$FwdMessage;->time:I

    .line 314
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/Message$FwdMessage;->setText(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/vkontakte/android/Message$FwdMessage;->username:Ljava/lang/String;

    .line 316
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/vkontakte/android/Message$FwdMessage;->userphoto:Ljava/lang/String;

    .line 317
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v2, Lcom/vkontakte/android/Message$FwdMessage;->id:I

    .line 318
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 319
    .local v0, "atts":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    .line 320
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 324
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 325
    .local v3, "nfwd":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    .line 326
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_1

    .line 329
    return-object v2

    .line 321
    .end local v3    # "nfwd":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 322
    .local v4, "type":I
    iget-object v5, v2, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    invoke-static {p0, v4}, Lcom/vkontakte/android/Attachment;->deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    .end local v4    # "type":I
    .restart local v3    # "nfwd":I
    :cond_1
    iget-object v5, v2, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/vkontakte/android/Message$FwdMessage;->deserialize(Ljava/io/DataInputStream;)Lcom/vkontakte/android/Message$FwdMessage;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
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
    .line 338
    iget v2, p0, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 339
    iget v2, p0, Lcom/vkontakte/android/Message$FwdMessage;->time:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 340
    iget-object v2, p0, Lcom/vkontakte/android/Message$FwdMessage;->text:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/vkontakte/android/Message$FwdMessage;->username:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Lcom/vkontakte/android/Message$FwdMessage;->userphoto:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 343
    iget v2, p0, Lcom/vkontakte/android/Message$FwdMessage;->id:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 344
    iget-object v2, p0, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 345
    iget-object v2, p0, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 348
    iget-object v2, p0, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 349
    iget-object v2, p0, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 352
    return-void

    .line 345
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 346
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v0, p1}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 349
    .end local v0    # "a":Lcom/vkontakte/android/Attachment;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message$FwdMessage;

    .line 350
    .local v1, "m":Lcom/vkontakte/android/Message$FwdMessage;
    invoke-virtual {v1, p1}, Lcom/vkontakte/android/Message$FwdMessage;->serialize(Ljava/io/DataOutputStream;)V

    goto :goto_1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/vkontakte/android/Message$FwdMessage;->text:Ljava/lang/String;

    .line 334
    invoke-static {p1}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "<br/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    .line 335
    return-void
.end method
