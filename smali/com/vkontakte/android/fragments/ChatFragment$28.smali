.class Lcom/vkontakte/android/fragments/ChatFragment$28;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;

.field final synthetic val$actionView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->val$actionView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1436
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1437
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1443
    :goto_0
    return-void

    .line 1438
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/ChatFragment$28$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/fragments/ChatFragment$28$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$28;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
