.class Lcom/vkontakte/android/ProfileEditActivity$6;
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
    .line 152
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity$6;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 155
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$6;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v1, 0x7f080143

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$6;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v1, 0x7f080145

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$6;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v0, v2}, Lcom/vkontakte/android/ProfileEditActivity;->access$602(Lcom/vkontakte/android/ProfileEditActivity;I)I

    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$6;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileEditActivity;->access$700(Lcom/vkontakte/android/ProfileEditActivity;)V

    .line 159
    return-void
.end method
