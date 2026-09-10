.class Lcom/vkontakte/android/ui/ListImageLoader$Task;
.super Ljava/lang/Object;
.source "ListImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/ListImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# instance fields
.field image:I

.field item:I

.field final synthetic this$0:Lcom/vkontakte/android/ui/ListImageLoader;

.field url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ui/ListImageLoader;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoader$Task;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ui/ListImageLoader;Lcom/vkontakte/android/ui/ListImageLoader$Task;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/ListImageLoader$Task;-><init>(Lcom/vkontakte/android/ui/ListImageLoader;)V

    return-void
.end method
