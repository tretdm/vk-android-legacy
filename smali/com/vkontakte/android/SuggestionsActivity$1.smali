.class Lcom/vkontakte/android/SuggestionsActivity$1;
.super Ljava/lang/Object;
.source "SuggestionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SuggestionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SuggestionsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SuggestionsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SuggestionsActivity$1;->this$0:Lcom/vkontakte/android/SuggestionsActivity;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/SuggestionsActivity$1;->this$0:Lcom/vkontakte/android/SuggestionsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SuggestionsActivity;->access$0(Lcom/vkontakte/android/SuggestionsActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/SuggestionsActivity$1;->this$0:Lcom/vkontakte/android/SuggestionsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SuggestionsActivity;->access$1(Lcom/vkontakte/android/SuggestionsActivity;)V

    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/SuggestionsActivity$1;->this$0:Lcom/vkontakte/android/SuggestionsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SuggestionsActivity;->access$2(Lcom/vkontakte/android/SuggestionsActivity;I)V

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/SuggestionsActivity$1;->this$0:Lcom/vkontakte/android/SuggestionsActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.RELOAD_FEED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/SuggestionsActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/SuggestionsActivity$1;->this$0:Lcom/vkontakte/android/SuggestionsActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/vkontakte/android/SuggestionsActivity;->access$2(Lcom/vkontakte/android/SuggestionsActivity;I)V

    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/SuggestionsActivity$1;->this$0:Lcom/vkontakte/android/SuggestionsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SuggestionsActivity;->setResult(I)V

    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/SuggestionsActivity$1;->this$0:Lcom/vkontakte/android/SuggestionsActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/SuggestionsActivity;->finish()V

    goto :goto_0
.end method
