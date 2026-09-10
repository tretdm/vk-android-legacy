.class Lcom/vkontakte/android/MessageView$3;
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
    iput-object p1, p0, Lcom/vkontakte/android/MessageView$3;->this$0:Lcom/vkontakte/android/MessageView;

    iput-object p2, p0, Lcom/vkontakte/android/MessageView$3;->val$msg:Lcom/vkontakte/android/Message;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 286
    .local v11, "t":Ljava/lang/Object;
    instance-of v14, v11, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v14, :cond_0

    move-object v13, v11

    .line 287
    check-cast v13, Lcom/vkontakte/android/VideoAttachment;

    .line 288
    .local v13, "va":Lcom/vkontakte/android/VideoAttachment;
    new-instance v3, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v3}, Lcom/vkontakte/android/api/VideoFile;-><init>()V

    .line 289
    .local v3, "f":Lcom/vkontakte/android/api/VideoFile;
    iget v14, v13, Lcom/vkontakte/android/VideoAttachment;->duration:I

    iput v14, v3, Lcom/vkontakte/android/api/VideoFile;->duration:I

    .line 290
    iget v14, v13, Lcom/vkontakte/android/VideoAttachment;->oid:I

    iput v14, v3, Lcom/vkontakte/android/api/VideoFile;->oid:I

    .line 291
    iget v14, v13, Lcom/vkontakte/android/VideoAttachment;->vid:I

    iput v14, v3, Lcom/vkontakte/android/api/VideoFile;->vid:I

    .line 292
    iget-object v14, v13, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    iput-object v14, v3, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    .line 293
    iget-object v14, v13, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    iput-object v14, v3, Lcom/vkontakte/android/api/VideoFile;->accessKey:Ljava/lang/String;

    .line 294
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/MessageView$3;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v14}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v14

    const-class v15, Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-direct {v7, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    .local v7, "intent":Landroid/content/Intent;
    const-string v14, "file"

    invoke-virtual {v7, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 296
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/MessageView$3;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v14}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 298
    .end local v3    # "f":Lcom/vkontakte/android/api/VideoFile;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v13    # "va":Lcom/vkontakte/android/VideoAttachment;
    :cond_0
    instance-of v14, v11, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v14, :cond_1

    move-object v2, v11

    .line 299
    check-cast v2, Lcom/vkontakte/android/DocumentAttachment;

    .line 300
    .local v2, "da":Lcom/vkontakte/android/DocumentAttachment;
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    iget-object v15, v2, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v7, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 301
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/MessageView$3;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v14}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 303
    .end local v2    # "da":Lcom/vkontakte/android/DocumentAttachment;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    .line 304
    .local v6, "index":I
    instance-of v14, v11, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v14, :cond_b

    .line 305
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v10, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/MessageView$3;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v0, v14, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    move/from16 v0, v17

    if-lt v15, v0, :cond_3

    .line 321
    const/4 v14, 0x0

    new-array v14, v14, [Lcom/vkontakte/android/Photo;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/vkontakte/android/Photo;

    .line 322
    .local v8, "list":[Lcom/vkontakte/android/Photo;
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/MessageView$3;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v14}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v14

    const-class v15, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v7, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v14, "hide_bottombar"

    const/4 v15, 0x1

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 324
    const-string v14, "photo_list"

    invoke-virtual {v7, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 325
    const-string v15, "photo_index"

    array-length v14, v8

    if-ge v6, v14, :cond_6

    move v14, v6

    :goto_1
    invoke-virtual {v7, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    const-string v15, "photo"

    array-length v14, v8

    if-ge v6, v14, :cond_7

    move v14, v6

    :goto_2
    aget-object v14, v8, v14

    iget-object v14, v14, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {v7, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v15, "vk"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v14, "full url "

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v14, v8

    if-ge v6, v14, :cond_8

    move v14, v6

    :goto_3
    aget-object v14, v8, v14

    iget-object v14, v14, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    array-length v14, v8

    if-ge v6, v14, :cond_9

    move v14, v6

    :goto_4
    aget-object v14, v8, v14

    iget-object v14, v14, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    if-nez v14, :cond_a

    .line 336
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "list":[Lcom/vkontakte/android/Photo;
    .end local v10    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    :cond_2
    :goto_5
    return-void

    .line 306
    .restart local v10    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    :cond_3
    aget-object v1, v16, v15

    .line 307
    .local v1, "att":Lcom/vkontakte/android/Attachment;
    instance-of v14, v1, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v14, :cond_5

    .line 308
    new-instance v9, Lcom/vkontakte/android/Photo;

    invoke-direct {v9}, Lcom/vkontakte/android/Photo;-><init>()V

    .local v9, "photo":Lcom/vkontakte/android/Photo;
    move-object v14, v1

    .line 309
    check-cast v14, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v14, v14, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    iput-object v14, v9, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    move-object v14, v1

    .line 310
    check-cast v14, Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual {v14}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    move-object v14, v1

    .line 311
    check-cast v14, Lcom/vkontakte/android/PhotoAttachment;

    iget v14, v14, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    iput v14, v9, Lcom/vkontakte/android/Photo;->albumID:I

    move-object v14, v1

    .line 312
    check-cast v14, Lcom/vkontakte/android/PhotoAttachment;

    iget v14, v14, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    iput v14, v9, Lcom/vkontakte/android/Photo;->id:I

    move-object v14, v1

    .line 313
    check-cast v14, Lcom/vkontakte/android/PhotoAttachment;

    iget v14, v14, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    iput v14, v9, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 314
    const/4 v14, 0x0

    iput v14, v9, Lcom/vkontakte/android/Photo;->date:I

    .line 315
    const-string v14, ""

    iput-object v14, v9, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 316
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    if-ne v1, v11, :cond_4

    move v6, v5

    .line 318
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 306
    .end local v9    # "photo":Lcom/vkontakte/android/Photo;
    :cond_5
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto/16 :goto_0

    .line 325
    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "list":[Lcom/vkontakte/android/Photo;
    :cond_6
    const/4 v14, 0x0

    goto :goto_1

    .line 326
    :cond_7
    const/4 v14, 0x0

    goto :goto_2

    .line 327
    :cond_8
    const/4 v14, 0x0

    goto :goto_3

    .line 328
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 329
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/MessageView$3;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v14}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 331
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "list":[Lcom/vkontakte/android/Photo;
    .end local v10    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    :cond_b
    instance-of v14, v11, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v14, :cond_2

    move-object v4, v11

    .line 332
    check-cast v4, Lcom/vkontakte/android/GeoAttachment;

    .line 333
    .local v4, "ga":Lcom/vkontakte/android/GeoAttachment;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "geo:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v15, v4, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v15, v4, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "?z=18&q="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v15, v4, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%2C"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v15, v4, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 334
    .local v12, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/MessageView$3;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v14}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.VIEW"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v14, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5
.end method
