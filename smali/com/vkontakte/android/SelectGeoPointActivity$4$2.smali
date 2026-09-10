.class Lcom/vkontakte/android/SelectGeoPointActivity$4$2;
.super Ljava/lang/Object;
.source "SelectGeoPointActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/PlacesAdd$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SelectGeoPointActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/SelectGeoPointActivity$4;

.field private final synthetic val$att:Lcom/vkontakte/android/GeoAttachment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SelectGeoPointActivity$4;Lcom/vkontakte/android/GeoAttachment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$2;->this$1:Lcom/vkontakte/android/SelectGeoPointActivity$4;

    iput-object p2, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$2;->val$att:Lcom/vkontakte/android/GeoAttachment;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$2;->this$1:Lcom/vkontakte/android/SelectGeoPointActivity$4;

    invoke-static {v0}, Lcom/vkontakte/android/SelectGeoPointActivity$4;->access$0(Lcom/vkontakte/android/SelectGeoPointActivity$4;)Lcom/vkontakte/android/SelectGeoPointActivity;

    move-result-object v0

    const v1, 0x7f080068

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 159
    return-void
.end method

.method public success(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 147
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$2;->val$att:Lcom/vkontakte/android/GeoAttachment;

    iput p1, v1, Lcom/vkontakte/android/GeoAttachment;->id:I

    .line 148
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$2;->val$att:Lcom/vkontakte/android/GeoAttachment;

    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$2;->this$1:Lcom/vkontakte/android/SelectGeoPointActivity$4;

    invoke-static {v2}, Lcom/vkontakte/android/SelectGeoPointActivity$4;->access$0(Lcom/vkontakte/android/SelectGeoPointActivity$4;)Lcom/vkontakte/android/SelectGeoPointActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$2(Lcom/vkontakte/android/SelectGeoPointActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$2;->val$att:Lcom/vkontakte/android/GeoAttachment;

    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$2;->this$1:Lcom/vkontakte/android/SelectGeoPointActivity$4;

    invoke-static {v2}, Lcom/vkontakte/android/SelectGeoPointActivity$4;->access$0(Lcom/vkontakte/android/SelectGeoPointActivity$4;)Lcom/vkontakte/android/SelectGeoPointActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$1(Lcom/vkontakte/android/SelectGeoPointActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "point"

    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$2;->val$att:Lcom/vkontakte/android/GeoAttachment;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$2;->this$1:Lcom/vkontakte/android/SelectGeoPointActivity$4;

    invoke-static {v1}, Lcom/vkontakte/android/SelectGeoPointActivity$4;->access$0(Lcom/vkontakte/android/SelectGeoPointActivity$4;)Lcom/vkontakte/android/SelectGeoPointActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->setResult(ILandroid/content/Intent;)V

    .line 153
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$2;->this$1:Lcom/vkontakte/android/SelectGeoPointActivity$4;

    invoke-static {v1}, Lcom/vkontakte/android/SelectGeoPointActivity$4;->access$0(Lcom/vkontakte/android/SelectGeoPointActivity$4;)Lcom/vkontakte/android/SelectGeoPointActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/SelectGeoPointActivity;->finish()V

    .line 154
    return-void
.end method
