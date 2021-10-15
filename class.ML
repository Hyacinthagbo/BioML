# Close previous plot
plt.close()

# plot ROC curves
plt.figure(figsize=(10, 5))

lw = 2
colors = cm.rainbow(np.linspace(0, 1, n_classes))
for i, color in zip(range(n_classes), colors):
    plt.plot(fpr[i], tpr[i], color=color, lw=lw,
             label='ROC curve of class {0} (area = {1:0.2f})'
             .format(classes[i], roc_auc[i]))

plt.plot([0, 1], [0, 1], 'k--', lw=lw)
plt.xlim([0.0, 1.0])
plt.ylim([0.0, 1.05])
plt.xlabel('False Positive Rate', size=10)
plt.ylabel('True Positive Rate', size=10)
plt.title('ROC curves for multi-class SVM', size=12)
plt.legend(loc='lower right')
plt.tight_layout(pad=5)
plt.show()
