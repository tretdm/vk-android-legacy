.class Lcom/vkontakte/android/CheckInActivity$10;
.super Ljava/lang/Object;
.source "CheckInActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/PlacesSearch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CheckInActivity;->loadData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CheckInActivity;

.field final synthetic val$q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CheckInActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    iput-object p2, p0, Lcom/vkontakte/android/CheckInActivity$10;->val$q:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/CheckInActivity;->access$1802(Lcom/vkontakte/android/CheckInActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 414
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/GeoPlace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "_places":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/GeoPlace;>;"
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/CheckInActivity;->access$1802(Lcom/vkontakte/android/CheckInActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 400
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$800(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 401
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->val$q:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$800(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$1700(Lcom/vkontakte/android/CheckInActivity;)Lcom/vkontakte/android/GeoPlace;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$800(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 404
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->val$q:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$800(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$900(Lcom/vkontakte/android/CheckInActivity;)Lcom/vkontakte/android/GeoPlace;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$1300(Lcom/vkontakte/android/CheckInActivity;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 407
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$1500(Lcom/vkontakte/android/CheckInActivity;)V

    .line 408
    return-void
.end method
