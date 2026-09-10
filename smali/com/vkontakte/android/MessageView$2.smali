.class Lcom/vkontakte/android/MessageView$2;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MessageView;->setData(ZLjava/lang/CharSequence;[IZZLcom/vkontakte/android/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MessageView;

.field private final synthetic val$msg:Lcom/vkontakte/android/Message;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MessageView;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MessageView$2;->this$0:Lcom/vkontakte/android/MessageView;

    iput-object p2, p0, Lcom/vkontakte/android/MessageView$2;->val$msg:Lcom/vkontakte/android/Message;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 261
    .local v9, "t":Ljava/lang/Object;
    instance-of v11, v9, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v11, :cond_0

    move-object v10, v9

    .line 262
    check-cast v10, Lcom/vkontakte/android/VideoAttachment;

    .line 263
    .local v10, "va":Lcom/vkontakte/android/VideoAttachment;
    new-instance v2, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v2}, Lcom/vkontakte/android/api/VideoFile;-><init>()V

    .line 264
    .local v2, "f":Lcom/vkontakte/android/api/VideoFile;
    iget v11, v10, Lcom/vkontakte/android/VideoAttachment;->duration:I

    iput v11, v2, Lcom/vkontakte/android/api/VideoFile;->duration:I

    .line 265
    iget v11, v10, Lcom/vkontakte/android/VideoAttachment;->oid:I

    iput v11, v2, Lcom/vkontakte/android/api/VideoFile;->oid:I

    .line 266
    iget v11, v10, Lcom/vkontakte/android/VideoAttachment;->vid:I

    iput v11, v2, Lcom/vkontakte/android/api/VideoFile;->vid:I

    .line 267
    iget-object v11, v10, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    iput-object v11, v2, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    .line 268
    new-instance v5, Landroid/content/Intent;

    iget-object v11, p0, Lcom/vkontakte/android/MessageView$2;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v11}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-direct {v5, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    .local v5, "intent":Landroid/content/Intent;
    const-string v11, "file"

    invoke-virtual {v5, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 270
    iget-object v11, p0, Lcom/vkontakte/android/MessageView$2;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v11}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 272
    .end local v2    # "f":Lcom/vkontakte/android/api/VideoFile;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v10    # "va":Lcom/vkontakte/android/VideoAttachment;
    :cond_0
    instance-of v11, v9, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v11, :cond_1

    move-object v1, v9

    .line 273
    check-cast v1, Lcom/vkontakte/android/DocumentAttachment;

    .line 274
    .local v1, "da":Lcom/vkontakte/android/DocumentAttachment;
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    iget-object v12, v1, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 275
    .restart local v5    # "intent":Landroid/content/Intent;
    iget-object v11, p0, Lcom/vkontakte/android/MessageView$2;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v11}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 277
    .end local v1    # "da":Lcom/vkontakte/android/DocumentAttachment;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .line 278
    .local v4, "index":I
    instance-of v11, v9, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v11, :cond_2

    .line 279
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v8, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    iget-object v11, p0, Lcom/vkontakte/android/MessageView$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v13, v11, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v14, v13

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-lt v12, v14, :cond_3

    .line 295
    const/4 v11, 0x0

    new-array v11, v11, [Lcom/vkontakte/android/Photo;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/vkontakte/android/Photo;

    .line 296
    .local v6, "list":[Lcom/vkontakte/android/Photo;
    new-instance v5, Landroid/content/Intent;

    iget-object v11, p0, Lcom/vkontakte/android/MessageView$2;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v11}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v5, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v11, "hide_bottombar"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    const-string v11, "photo_list"

    invoke-virtual {v5, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 299
    const-string v12, "photo_index"

    array-length v11, v6

    if-ge v4, v11, :cond_6

    move v11, v4

    :goto_1
    invoke-virtual {v5, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string v12, "photo"

    array-length v11, v6

    if-ge v4, v11, :cond_7

    move v11, v4

    :goto_2
    aget-object v11, v6, v11

    iget-object v11, v11, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {v5, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v12, "vk"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v11, "full url "

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v6

    if-ge v4, v11, :cond_8

    move v11, v4

    :goto_3
    aget-object v11, v6, v11

    iget-object v11, v11, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    array-length v11, v6

    if-ge v4, v11, :cond_9

    move v11, v4

    :goto_4
    aget-object v11, v6, v11

    iget-object v11, v11, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    if-nez v11, :cond_a

    .line 305
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "list":[Lcom/vkontakte/android/Photo;
    .end local v8    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    :cond_2
    :goto_5
    return-void

    .line 280
    .restart local v8    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    :cond_3
    aget-object v0, v13, v12

    .line 281
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v11, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v11, :cond_5

    .line 282
    new-instance v7, Lcom/vkontakte/android/Photo;

    invoke-direct {v7}, Lcom/vkontakte/android/Photo;-><init>()V

    .local v7, "photo":Lcom/vkontakte/android/Photo;
    move-object v11, v0

    .line 283
    check-cast v11, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v11, v11, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    iput-object v11, v7, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    move-object v11, v0

    .line 284
    check-cast v11, Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual {v11}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    move-object v11, v0

    .line 285
    check-cast v11, Lcom/vkontakte/android/PhotoAttachment;

    iget v11, v11, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    iput v11, v7, Lcom/vkontakte/android/Photo;->albumID:I

    move-object v11, v0

    .line 286
    check-cast v11, Lcom/vkontakte/android/PhotoAttachment;

    iget v11, v11, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    iput v11, v7, Lcom/vkontakte/android/Photo;->id:I

    move-object v11, v0

    .line 287
    check-cast v11, Lcom/vkontakte/android/PhotoAttachment;

    iget v11, v11, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    iput v11, v7, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 288
    const/4 v11, 0x0

    iput v11, v7, Lcom/vkontakte/android/Photo;->date:I

    .line 289
    const-string v11, ""

    iput-object v11, v7, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 290
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    if-ne v0, v9, :cond_4

    move v4, v3

    .line 292
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 280
    .end local v7    # "photo":Lcom/vkontakte/android/Photo;
    :cond_5
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto/16 :goto_0

    .line 299
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "list":[Lcom/vkontakte/android/Photo;
    :cond_6
    const/4 v11, 0x0

    goto :goto_1

    .line 300
    :cond_7
    const/4 v11, 0x0

    goto :goto_2

    .line 301
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 302
    :cond_9
    const/4 v11, 0x0

    goto :goto_4

    .line 303
    :cond_a
    iget-object v11, p0, Lcom/vkontakte/android/MessageView$2;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v11}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5
.end method
