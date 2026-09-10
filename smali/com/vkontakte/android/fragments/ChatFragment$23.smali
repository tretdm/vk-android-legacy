.class Lcom/vkontakte/android/fragments/ChatFragment$23;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;

.field private final synthetic val$actionView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$23;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$23;->val$actionView:Landroid/widget/ImageView;

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1051
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$23;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1052
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$23;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1058
    :goto_0
    return-void

    .line 1053
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$23;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/ChatFragment$23$1;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$23;->val$actionView:Landroid/widget/ImageView;

    invoke-direct {v2, p0, v3, v0}, Lcom/vkontakte/android/fragments/ChatFragment$23$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$23;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
