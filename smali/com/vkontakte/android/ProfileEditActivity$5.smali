.class Lcom/vkontakte/android/ProfileEditActivity$5;
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
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity$5;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$5;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 151
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$5;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v1, 0x7f090164

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$5;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/vkontakte/android/ProfileEditActivity;->access$7(Lcom/vkontakte/android/ProfileEditActivity;I)V

    .line 153
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$5;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileEditActivity;->access$8(Lcom/vkontakte/android/ProfileEditActivity;)V

    .line 154
    return-void
.end method
