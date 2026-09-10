.class Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$8;
.super Ljava/lang/Object;
.source "LocalImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

.field private final synthetic val$getter:Ljava/lang/Runnable;

.field private final synthetic val$unlock:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$8;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$8;->val$getter:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$8;->val$unlock:Ljava/lang/Runnable;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$8;->val$getter:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 505
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$8;->val$unlock:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 506
    return-void
.end method
