.class Lcom/vkontakte/android/LongPollService$3;
.super Ljava/lang/Object;
.source "LongPollService.java"

# interfaces
.implements Lcom/vkontakte/android/api/GetMessagePhotos$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LongPollService;->processMessage(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/LongPollService;

.field private final synthetic val$msg:Lcom/vkontakte/android/Message;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LongPollService;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService$3;->this$0:Lcom/vkontakte/android/LongPollService;

    iput-object p2, p0, Lcom/vkontakte/android/LongPollService$3;->val$msg:Lcom/vkontakte/android/Message;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 347
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    iget-object v5, p0, Lcom/vkontakte/android/LongPollService$3;->val$msg:Lcom/vkontakte/android/Message;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/vkontakte/android/Attachment;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/vkontakte/android/Attachment;

    iput-object v4, v5, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    .line 319
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 342
    return-void

    .line 319
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 320
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    instance-of v4, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v4, :cond_2

    move-object v2, v0

    .line 321
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    .line 322
    .local v2, "pa":Lcom/vkontakte/android/PhotoAttachment;
    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_4

    .line 323
    iget-object v4, p0, Lcom/vkontakte/android/LongPollService$3;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v6, v4, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    iget-object v4, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v7, "m"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v4, v4, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v2    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    :cond_2
    :goto_1
    instance-of v4, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v4, :cond_3

    move-object v3, v0

    .line 332
    check-cast v3, Lcom/vkontakte/android/VideoAttachment;

    .line 333
    .local v3, "va":Lcom/vkontakte/android/VideoAttachment;
    iget-object v4, p0, Lcom/vkontakte/android/LongPollService$3;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v4, v4, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    iget-object v6, v3, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v3    # "va":Lcom/vkontakte/android/VideoAttachment;
    :cond_3
    instance-of v4, v0, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 337
    check-cast v1, Lcom/vkontakte/android/DocumentAttachment;

    .line 338
    .local v1, "da":Lcom/vkontakte/android/DocumentAttachment;
    iget-object v4, p0, Lcom/vkontakte/android/LongPollService$3;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v4, v4, Lcom/vkontakte/android/Message;->docNames:Ljava/util/Vector;

    iget-object v6, v1, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v4, p0, Lcom/vkontakte/android/LongPollService$3;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v4, v4, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    iget-object v6, v1, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 324
    .end local v1    # "da":Lcom/vkontakte/android/DocumentAttachment;
    .restart local v2    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    :cond_4
    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    float-to-double v6, v4

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    cmpg-double v4, v6, v8

    if-gtz v4, :cond_6

    .line 325
    iget-object v4, p0, Lcom/vkontakte/android/LongPollService$3;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v6, v4, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    iget-object v4, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v7, "q"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v7, "q"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v4, v4, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    :goto_2
    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v4, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v7, "m"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v4, v4, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    goto :goto_2

    .line 327
    :cond_6
    iget-object v4, p0, Lcom/vkontakte/android/LongPollService$3;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v6, v4, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    iget-object v4, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v7, "r"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v7, "r"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v4, v4, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    :goto_3
    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget-object v4, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v7, "m"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v4, v4, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    goto :goto_3
.end method
