.class Lcom/vkontakte/android/ProfileEditActivity$13;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Lcom/vkontakte/android/fragments/CitySelectFragment$CityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileEditActivity;->selectCity()V
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
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity$13;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/vkontakte/android/data/database/City;)V
    .locals 2
    .param p1, "item"    # Lcom/vkontakte/android/data/database/City;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$13;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    iget v1, p1, Lcom/vkontakte/android/data/database/City;->id:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/ProfileEditActivity;->access$2(Lcom/vkontakte/android/ProfileEditActivity;I)V

    .line 242
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$13;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileEditActivity;->access$19(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$13;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileEditActivity;->access$4(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/vkontakte/android/data/database/City;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$13;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileEditActivity;->access$4(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkontakte/android/data/database/City;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ProfileEditActivity$13;->onItemSelected(Lcom/vkontakte/android/data/database/City;)V

    return-void
.end method
