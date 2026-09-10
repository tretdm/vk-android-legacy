.class Lcom/vkontakte/android/StoreActivity$4;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/StoreActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$4;->this$0:Lcom/vkontakte/android/StoreActivity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$4;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$7(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$4;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$8(Lcom/vkontakte/android/StoreActivity;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$4;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$9(Lcom/vkontakte/android/StoreActivity;)V

    .line 169
    return-void
.end method
