.class Lcom/vkontakte/android/AudioListActivity$7;
.super Ljava/lang/Object;
.source "AudioListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioListActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$7;->this$0:Lcom/vkontakte/android/AudioListActivity;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$7;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v0}, Lcom/vkontakte/android/AudioListActivity;->access$10(Lcom/vkontakte/android/AudioListActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$7;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v0}, Lcom/vkontakte/android/AudioListActivity;->access$10(Lcom/vkontakte/android/AudioListActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$7;->this$0:Lcom/vkontakte/android/AudioListActivity;

    const v1, 0x7f060074

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$7;->this$0:Lcom/vkontakte/android/AudioListActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioListActivity;->localSearch(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$7;->this$0:Lcom/vkontakte/android/AudioListActivity;

    const-string v1, ""

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/AudioListActivity;->search(Ljava/lang/String;I)V

    .line 254
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$7;->this$0:Lcom/vkontakte/android/AudioListActivity;

    const v1, 0x7f060124

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    return-void
.end method
