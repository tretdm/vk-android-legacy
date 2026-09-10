.class Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;
.super Ljava/lang/Object;
.source "GeoPlaceFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/PlacesGetInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GeoPlaceFragment;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$5(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 291
    return-void
.end method

.method public success(Lcom/vkontakte/android/GeoPlace;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "_place"    # Lcom/vkontakte/android/GeoPlace;
    .param p3, "_groupStatus"    # Ljava/lang/String;
    .param p4, "_groupPhoto"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/GeoPlace;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 275
    .local p2, "_userPhotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$5(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 276
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v0, p1}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$6(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Lcom/vkontakte/android/GeoPlace;)V

    .line 277
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v0, p2}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$7(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Ljava/util/ArrayList;)V

    .line 278
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v0, p3}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$8(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v0, p4}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$9(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$2(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$2(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$10(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$2(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$0(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Lcom/vkontakte/android/GeoPlace;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/GeoPlace;->checkins:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$11(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    .line 284
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$12(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    .line 286
    :cond_0
    return-void
.end method
