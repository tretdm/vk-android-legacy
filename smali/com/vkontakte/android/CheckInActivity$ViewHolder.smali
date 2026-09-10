.class Lcom/vkontakte/android/CheckInActivity$ViewHolder;
.super Ljava/lang/Object;
.source "CheckInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/CheckInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field checkins:Landroid/widget/TextView;

.field photo:Landroid/widget/ImageView;

.field subtitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkontakte/android/CheckInActivity;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/CheckInActivity;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/vkontakte/android/CheckInActivity$ViewHolder;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/CheckInActivity;Lcom/vkontakte/android/CheckInActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/CheckInActivity;
    .param p2, "x1"    # Lcom/vkontakte/android/CheckInActivity$1;

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/vkontakte/android/CheckInActivity$ViewHolder;-><init>(Lcom/vkontakte/android/CheckInActivity;)V

    return-void
.end method
