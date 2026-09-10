.class Lcom/vkontakte/android/StickerManagerActivity$4;
.super Ljava/lang/Object;
.source "StickerManagerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/StoreSetActive$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StickerManagerActivity;->setActiveState(Lcom/vkontakte/android/data/StickerPack;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/StickerManagerActivity;

.field final synthetic val$activate:Z

.field final synthetic val$pack:Lcom/vkontakte/android/data/StickerPack;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StickerManagerActivity;ZLcom/vkontakte/android/data/StickerPack;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->val$activate:Z

    iput-object p3, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->val$pack:Lcom/vkontakte/android/data/StickerPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f0d00ce

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 188
    return-void

    .line 187
    :cond_0
    const v0, 0x7f0d00d0

    goto :goto_0
.end method

.method public success()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 154
    iget-boolean v8, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->val$activate:Z

    if-eqz v8, :cond_2

    .line 155
    iget-object v8, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v8}, Lcom/vkontakte/android/StickerManagerActivity;->access$900(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->val$pack:Lcom/vkontakte/android/data/StickerPack;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    iget-object v8, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v8}, Lcom/vkontakte/android/StickerManagerActivity;->access$000(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->val$pack:Lcom/vkontakte/android/data/StickerPack;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v2, "builtIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "stickers"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "assets":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .local v3, "file":Ljava/lang/String;
    :try_start_1
    const-string v8, "\\."

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "assets":[Ljava/lang/String;
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v7

    .line 166
    .local v7, "x":Ljava/lang/Exception;
    const-string v8, "vk"

    invoke-static {v8, v7}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .end local v7    # "x":Ljava/lang/Exception;
    :cond_0
    iget-object v8, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->val$pack:Lcom/vkontakte/android/data/StickerPack;

    iget v8, v8, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 169
    new-instance v5, Landroid/content/Intent;

    iget-object v8, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    const-class v9, Lcom/vkontakte/android/StickerDownloaderService;

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v5, "intent":Landroid/content/Intent;
    const-string v8, "id"

    iget-object v9, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->val$pack:Lcom/vkontakte/android/data/StickerPack;

    iget v9, v9, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    const-string v8, "url"

    iget-object v9, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    const-string v10, "stickers"

    invoke-virtual {v9, v10, v11}, Lcom/vkontakte/android/StickerManagerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->val$pack:Lcom/vkontakte/android/data/StickerPack;

    iget v11, v11, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v8, "title"

    iget-object v9, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->val$pack:Lcom/vkontakte/android/data/StickerPack;

    iget-object v9, v9, Lcom/vkontakte/android/data/StickerPack;->title:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v8, "silent"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    iget-object v8, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-virtual {v8, v5}, Lcom/vkontakte/android/StickerManagerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 181
    .end local v2    # "builtIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v8}, Lcom/vkontakte/android/StickerManagerActivity;->access$1000(Lcom/vkontakte/android/StickerManagerActivity;)V

    .line 182
    iget-object v8, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v8}, Lcom/vkontakte/android/StickerManagerActivity;->access$1100(Lcom/vkontakte/android/StickerManagerActivity;)V

    .line 183
    return-void

    .line 177
    :cond_2
    iget-object v8, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->val$pack:Lcom/vkontakte/android/data/StickerPack;

    iget v8, v8, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v8}, Lcom/vkontakte/android/data/Stickers;->deleteDownloadedPack(I)V

    .line 178
    iget-object v8, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v8}, Lcom/vkontakte/android/StickerManagerActivity;->access$000(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->val$pack:Lcom/vkontakte/android/data/StickerPack;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    iget-object v8, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v8}, Lcom/vkontakte/android/StickerManagerActivity;->access$900(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/StickerManagerActivity$4;->val$pack:Lcom/vkontakte/android/data/StickerPack;

    invoke-virtual {v8, v11, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 163
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "assets":[Ljava/lang/String;
    .restart local v2    # "builtIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :catch_1
    move-exception v8

    goto/16 :goto_1
.end method
