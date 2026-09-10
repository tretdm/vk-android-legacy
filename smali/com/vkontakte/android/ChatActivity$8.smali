.class Lcom/vkontakte/android/ChatActivity$8;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;

.field private final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$8;->this$0:Lcom/vkontakte/android/ChatActivity;

    iput-object p2, p0, Lcom/vkontakte/android/ChatActivity$8;->val$iv:Landroid/widget/ImageView;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$8;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 524
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$8;->this$0:Lcom/vkontakte/android/ChatActivity;

    new-instance v2, Lcom/vkontakte/android/ChatActivity$8$1;

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$8;->val$iv:Landroid/widget/ImageView;

    invoke-direct {v2, p0, v3, v0}, Lcom/vkontakte/android/ChatActivity$8$1;-><init>(Lcom/vkontakte/android/ChatActivity$8;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v1

    goto :goto_0
.end method
