.class Lcom/vkontakte/android/ProfileEditActivity$7;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileEditActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity$7;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$7;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileEditActivity;->access$9(Lcom/vkontakte/android/ProfileEditActivity;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$7;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileEditActivity;->access$10(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$7;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileEditActivity;->access$11(Lcom/vkontakte/android/ProfileEditActivity;)V

    .line 172
    return-void
.end method
