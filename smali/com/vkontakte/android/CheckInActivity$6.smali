.class Lcom/vkontakte/android/CheckInActivity$6;
.super Ljava/lang/Object;
.source "CheckInActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CheckInActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CheckInActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CheckInActivity;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/vkontakte/android/CheckInActivity$6;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 195
    iget-object v5, p0, Lcom/vkontakte/android/CheckInActivity$6;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v5}, Lcom/vkontakte/android/CheckInActivity;->access$700(Lcom/vkontakte/android/CheckInActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr p3, v5

    .line 196
    if-gez p3, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/CheckInActivity$6;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v5}, Lcom/vkontakte/android/CheckInActivity;->access$800(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/GeoPlace;

    .line 198
    .local v3, "place":Lcom/vkontakte/android/GeoPlace;
    iget v5, v3, Lcom/vkontakte/android/GeoPlace;->id:I

    if-ne v5, v7, :cond_2

    .line 199
    iget-object v5, p0, Lcom/vkontakte/android/CheckInActivity$6;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v5}, Lcom/vkontakte/android/CheckInActivity;->access$200(Lcom/vkontakte/android/CheckInActivity;)Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 200
    new-instance v4, Lcom/vkontakte/android/GeoAttachment;

    invoke-direct {v4}, Lcom/vkontakte/android/GeoAttachment;-><init>()V

    .line 201
    .local v4, "point":Lcom/vkontakte/android/GeoAttachment;
    iget-object v5, p0, Lcom/vkontakte/android/CheckInActivity$6;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v5}, Lcom/vkontakte/android/CheckInActivity;->access$200(Lcom/vkontakte/android/CheckInActivity;)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    iput-wide v5, v4, Lcom/vkontakte/android/GeoAttachment;->lat:D

    .line 202
    iget-object v5, p0, Lcom/vkontakte/android/CheckInActivity$6;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v5}, Lcom/vkontakte/android/CheckInActivity;->access$200(Lcom/vkontakte/android/CheckInActivity;)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    iput-wide v5, v4, Lcom/vkontakte/android/GeoAttachment;->lon:D

    .line 203
    iget-object v5, v3, Lcom/vkontakte/android/GeoPlace;->address:Ljava/lang/String;

    iput-object v5, v4, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    .line 204
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "point"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    iget-object v5, p0, Lcom/vkontakte/android/CheckInActivity$6;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-virtual {v5, v7, v2}, Lcom/vkontakte/android/CheckInActivity;->setResult(ILandroid/content/Intent;)V

    .line 207
    iget-object v5, p0, Lcom/vkontakte/android/CheckInActivity$6;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/CheckInActivity;->finish()V

    goto :goto_0

    .line 208
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "point":Lcom/vkontakte/android/GeoAttachment;
    :cond_2
    iget v5, v3, Lcom/vkontakte/android/GeoPlace;->id:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    .line 209
    iget-object v5, p0, Lcom/vkontakte/android/CheckInActivity$6;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v5}, Lcom/vkontakte/android/CheckInActivity;->access$200(Lcom/vkontakte/android/CheckInActivity;)Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 210
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/vkontakte/android/CheckInActivity$6;->this$0:Lcom/vkontakte/android/CheckInActivity;

    const-class v6, Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v5, "create_place"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    const-string v5, "place_address"

    iget-object v6, p0, Lcom/vkontakte/android/CheckInActivity$6;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v6}, Lcom/vkontakte/android/CheckInActivity;->access$900(Lcom/vkontakte/android/CheckInActivity;)Lcom/vkontakte/android/GeoPlace;

    move-result-object v6

    iget-object v6, v6, Lcom/vkontakte/android/GeoPlace;->address:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v5, "place_title"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/vkontakte/android/CheckInActivity$6;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v7}, Lcom/vkontakte/android/CheckInActivity;->access$300(Lcom/vkontakte/android/CheckInActivity;)Landroid/widget/SearchView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v5, p0, Lcom/vkontakte/android/CheckInActivity$6;->this$0:Lcom/vkontakte/android/CheckInActivity;

    const/16 v6, 0x209a

    invoke-virtual {v5, v2, v6}, Lcom/vkontakte/android/CheckInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 216
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v1, Lcom/vkontakte/android/GeoAttachment;

    invoke-direct {v1}, Lcom/vkontakte/android/GeoAttachment;-><init>()V

    .line 217
    .local v1, "att":Lcom/vkontakte/android/GeoAttachment;
    iget-wide v5, v3, Lcom/vkontakte/android/GeoPlace;->lat:D

    iput-wide v5, v1, Lcom/vkontakte/android/GeoAttachment;->lat:D

    .line 218
    iget-wide v5, v3, Lcom/vkontakte/android/GeoPlace;->lon:D

    iput-wide v5, v1, Lcom/vkontakte/android/GeoAttachment;->lon:D

    .line 219
    iget-object v5, v3, Lcom/vkontakte/android/GeoPlace;->address:Ljava/lang/String;

    iput-object v5, v1, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    .line 220
    iget v5, v3, Lcom/vkontakte/android/GeoPlace;->id:I

    iput v5, v1, Lcom/vkontakte/android/GeoAttachment;->id:I

    .line 221
    iget-object v5, v3, Lcom/vkontakte/android/GeoPlace;->title:Ljava/lang/String;

    iput-object v5, v1, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    .line 222
    iget-object v5, v3, Lcom/vkontakte/android/GeoPlace;->photo:Ljava/lang/String;

    iput-object v5, v1, Lcom/vkontakte/android/GeoAttachment;->photo:Ljava/lang/String;

    .line 223
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "checkin"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    const-string v5, "point"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 226
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/vkontakte/android/CheckInActivity$6;->this$0:Lcom/vkontakte/android/CheckInActivity;

    const-class v6, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v5, "class"

    const-string v6, "GeoPlaceFragment"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v5, "args"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 229
    iget-object v5, p0, Lcom/vkontakte/android/CheckInActivity$6;->this$0:Lcom/vkontakte/android/CheckInActivity;

    const/16 v6, 0x2099

    invoke-virtual {v5, v2, v6}, Lcom/vkontakte/android/CheckInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
