.class Lcom/vkontakte/android/ui/LocationAttachView$1$2;
.super Ljava/lang/Object;
.source "LocationAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/LocationAttachView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/LocationAttachView$1;

.field private final synthetic val$ga:Lcom/vkontakte/android/GeoAttachment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/LocationAttachView$1;Lcom/vkontakte/android/GeoAttachment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/LocationAttachView$1$2;->this$1:Lcom/vkontakte/android/ui/LocationAttachView$1;

    iput-object p2, p0, Lcom/vkontakte/android/ui/LocationAttachView$1$2;->val$ga:Lcom/vkontakte/android/GeoAttachment;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/ui/LocationAttachView$1$2;->this$1:Lcom/vkontakte/android/ui/LocationAttachView$1;

    invoke-static {v0}, Lcom/vkontakte/android/ui/LocationAttachView$1;->access$0(Lcom/vkontakte/android/ui/LocationAttachView$1;)Lcom/vkontakte/android/ui/LocationAttachView;

    move-result-object v0

    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LocationAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/LocationAttachView$1$2;->val$ga:Lcom/vkontakte/android/GeoAttachment;

    iget-object v1, v1, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkontakte/android/ui/LocationAttachView$1$2;->val$ga:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v2, v2, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/LocationAttachView$1$2;->val$ga:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v2, v2, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ui/LocationAttachView$1$2;->val$ga:Lcom/vkontakte/android/GeoAttachment;

    iget-object v1, v1, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    goto :goto_0
.end method
