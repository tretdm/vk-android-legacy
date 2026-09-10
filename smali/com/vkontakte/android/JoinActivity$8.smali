.class Lcom/vkontakte/android/JoinActivity$8;
.super Ljava/lang/Object;
.source "JoinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/JoinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/JoinActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/JoinActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/JoinActivity$8;->this$0:Lcom/vkontakte/android/JoinActivity;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$8;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$2(Lcom/vkontakte/android/JoinActivity;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 170
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$8;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$10(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 171
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$8;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$9(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 172
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$8;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0, v2}, Lcom/vkontakte/android/JoinActivity;->access$11(Lcom/vkontakte/android/JoinActivity;I)V

    .line 178
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$8;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$9(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 175
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$8;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$10(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 176
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$8;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0, v1}, Lcom/vkontakte/android/JoinActivity;->access$11(Lcom/vkontakte/android/JoinActivity;I)V

    goto :goto_0
.end method
