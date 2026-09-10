.class Lcom/vkontakte/android/fragments/ChatFragment$17;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->updateOnline(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$17;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1100
    return-void
.end method

.method public success(IIZZ)V
    .locals 10
    .param p1, "time"    # I
    .param p2, "online"    # I
    .param p3, "f"    # Z
    .param p4, "mobile"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1079
    if-lez p1, :cond_2

    if-nez p2, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$17;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1080
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$17;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    if-eqz p3, :cond_1

    const v4, 0x7f0801a1

    :goto_0
    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$17;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v4, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1081
    .local v2, "lastSeen":Ljava/lang/CharSequence;
    if-eqz p4, :cond_0

    .line 1082
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1083
    .local v0, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v4

    const-string v5, "F"

    invoke-virtual {v4, v5}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v3

    .line 1084
    .local v3, "sp":Landroid/text/Spannable;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$17;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020169

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1085
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v1, v8, v8, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1086
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v1, v9}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v3, v4, v8, v9, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1087
    const-string v4, "\u00a0"

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1088
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1089
    move-object v2, v0

    .line 1091
    .end local v0    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "sp":Landroid/text/Spannable;
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$17;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1095
    .end local v2    # "lastSeen":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1080
    :cond_1
    const v4, 0x7f0801a0

    goto :goto_0

    .line 1093
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$17;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$17;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, p2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$62(Lcom/vkontakte/android/fragments/ChatFragment;I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
